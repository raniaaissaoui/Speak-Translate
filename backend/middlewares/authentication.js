const jwt = require('jsonwebtoken');
const httpStatus = require('http-status-codes').StatusCodes;

module.exports = (req, res, next) => {
    const token = req.header('x-auth-token');
    
    if (!token) {
        console.warn('Access denied. No token provided');
        return res.status(httpStatus.UNAUTHORIZED).json({ error: 'Access denied. No token provided' });
    }

    try {
        const decoded = jwt.verify(token, process.env.TRANSLATION_JWT_PRIVATE_KEY);

        req.user = decoded;
        next();
    } catch (ex) {
        console.warn(`Invalid Token: ${ex}`);
        res.status(httpStatus.BAD_REQUEST).json({ error: 'Invalid token' });
    }
}