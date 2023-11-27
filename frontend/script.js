const recordBtn = document.querySelector(".record"),
  result = document.querySelector(".result"),
  downloadBtn = document.querySelector(".download"),
  inputLanguage = document.querySelector("#language"),
  clearBtn = document.querySelector(".clear");

const dropdowns = document.querySelectorAll(".dropdown-container"),
  inputLangDropdown = document.querySelector("#input-language"),
  outputLanguageDropdown = document.querySelector("#output-language");

let SpeechRecognition =
    window.SpeechRecognition || window.webkitSpeechRecognition,
  recognition,
  recording = false;

  async function populateLanguages() {
    try {
      const token = localStorage.getItem('jwtToken');
      const headers = {
        'Content-Type': 'application/json',
        'x-auth-token': token
      };
  
      const requestOptions = {
        method: 'GET',
        headers: headers
      };
  
      const response = await fetch('http://localhost:3000/api/languages', requestOptions);
  
      if (!response.ok) {
        alert('Network response was not ok');
      }
  
      languages = await response.json();
  
      languages.forEach((lang) => {
        const option = document.createElement('option');
        option.value = lang.code;
        option.innerHTML = lang.name;
        inputLanguage.appendChild(option);
      });

      function populateDropdown(dropdown, options) {
        dropdown.querySelector("ul").innerHTML = "";
        options.forEach((option) => {
          const li = document.createElement("li");
          const title = option.name + " (" + option.native + ")";
          li.innerHTML = title;
          li.dataset.value = option.code;
          li.classList.add("option");
          dropdown.querySelector("ul").appendChild(li);
        });
      }

      populateDropdown(outputLanguageDropdown, languages);

      dropdowns.forEach((dropdown) => {
        dropdown.addEventListener("click", (e) => {
          dropdown.classList.toggle("active");
        });

        dropdown.querySelectorAll(".option").forEach((item) => {
          item.addEventListener("click", (e) => {
            //remove active class from current dropdowns
            dropdown.querySelectorAll(".option").forEach((item) => {
              item.classList.remove("active");
            });
            item.classList.add("active");
            const selected = dropdown.querySelector(".selected");
            selected.innerHTML = item.innerHTML;
            selected.dataset.value = item.dataset.value;
            translate();
          });
        });
      });
      document.addEventListener("click", (e) => {
        dropdowns.forEach((dropdown) => {
          if (!dropdown.contains(e.target)) {
            dropdown.classList.remove("active");
          }
        });
      });

    } catch (error) {
      alert(`Error fetching languages: ${error}`)
    }
  }

populateLanguages();

function speechToText() {
  try {
    recognition = new SpeechRecognition();
    recognition.lang = inputLanguage.value;
    recognition.interimResults = true;
    recordBtn.classList.add("recording");
    recordBtn.querySelector("p").innerHTML = "Listening...";
    recognition.start();
    recognition.onresult = (event) => {
      const speechResult = event.results[0][0].transcript;
      //detect when intrim results
      if (event.results[0].isFinal) {
        result.innerHTML += " " + speechResult;
        //result.querySelector("p").remove();
        const event = new Event('input', { bubbles: true });
        inputTextElem.dispatchEvent(event);
      } 
      downloadBtn.disabled = false;
    };
    recognition.onspeechend = () => {
      speechToText();
    };
    recognition.onerror = (event) => {
      stopRecording();
      if (event.error === "no-speech") {
        alert("No speech was detected. Stopping...");
      } else if (event.error === "audio-capture") {
        alert(
          "No microphone was found. Ensure that a microphone is installed."
        );
      } else if (event.error === "not-allowed") {
        alert("Permission to use microphone is blocked.");
      } else if (event.error === "aborted") {
        alert("Listening Stopped.");
      } else {
        alert("Error occurred in recognition: " + event.error);
      }
    };
  } catch (error) {
    recording = false;

    console.log(error);
  }
}

recordBtn.addEventListener("click", () => {
  if (!recording) {
    speechToText();
    recording = true;
  } else {
    stopRecording();
  }
});

function stopRecording() {
  recognition.stop();
  recordBtn.querySelector("p").innerHTML = "Start Listening";
  recordBtn.classList.remove("recording");
  recording = false;
}

function download() {
  const text = result.innerText;
  const filename = "speech.txt";

  const element = document.createElement("a");
  element.setAttribute(
    "href",
    "data:text/plain;charset=utf-8," + encodeURIComponent(text)
  );
  element.setAttribute("download", filename);
  element.style.display = "none";
  document.body.appendChild(element);
  element.click();
  document.body.removeChild(element);
}

clearBtn.addEventListener("click", () => {
  result.innerHTML = "";
  downloadBtn.disabled = true;
});

const swapBtn = document.querySelector(".swap-position"),
  inputLang = inputLangDropdown.querySelector(".selected"),
  outputLanguage = outputLanguageDropdown.querySelector(".selected"),
  inputTextElem = document.querySelector("#input-text"),
  outputTextElem = document.querySelector("#output-text");

  swapBtn.addEventListener("click", (e) => {
    const temp = inputLang.innerHTML;
    inputLang.innerHTML = outputLanguage.innerHTML;
    outputLanguage.innerHTML = temp;
  
    const tempValue = inputLang.dataset.value;
    inputLang.dataset.value = outputLanguage.dataset.value;
    outputLanguage.dataset.value = tempValue;
  
    //swap text
    const tempInputText = inputTextElem.value;
    inputTextElem.value = outputTextElem.value;
    outputTextElem.value = tempInputText;
  
    translate();
  });
  
  function translate() {
    const inputText = inputTextElem.value;
    const inputLang =
      inputLangDropdown.querySelector(".selected").dataset.value;
    const outputLanguage =
      outputLanguageDropdown.querySelector(".selected").dataset.value;
    const url = `https://translate.googleapis.com/translate_a/single?client=gtx&sl=${inputLang}&tl=${outputLanguage}&dt=t&q=${encodeURI(
      inputText
    )}`;
    fetch(url)
      .then((response) => response.json())
      .then((json) => {
        console.log(json);
        outputTextElem.value = json[0].map((item) => item[0]).join("");
      })
      .catch((error) => {
        console.log(error);
      });
  }
  inputTextElem.addEventListener("input", (e) => {
    //limit input to 5000 characters
    if (inputTextElem.value.length > 5000) {
      inputTextElem.value = inputTextElem.value.slice(0, 5000);
    }
    translate();
  });
  
  
  
  
  const darkModeCheckbox = document.getElementById("dark-mode-btn");
  
  darkModeCheckbox.addEventListener("change", () => {
    document.body.classList.toggle("dark");
  });
