const express = require('express');
const logger = require('morgan');
const cors = require('cors');
const server = express();
const auth = require('./routes/AuthRoute');

const caseRoute = require('./routes/CaseRoute');
const cpuRoute = require('./routes/CpuRoute');
const motherboardRoute = require('./routes/MotherboardRoute');
const gpuRoute = require('./routes/GpuRoute');
const keyboardRoute = require('./routes/KeyboardRoute');
const psuRoute = require('./routes/PsuRoute');
const ramRoute = require('./routes/RamRoute');
const romRoute = require('./routes/RomRoute');
const mouseRoute = require('./routes/MouseRoute');
const monitorRoute = require('./routes/MonitorRoute');

server.listen(3000, 'localhost');
server.use(express.static('public'));
server.use(logger('dev'));
server.use(cors());

server.use(auth);
server.use(
    caseRoute,
    cpuRoute,
    motherboardRoute,
    gpuRoute,
    keyboardRoute,
    psuRoute,
    ramRoute,
    romRoute,
    mouseRoute,
    monitorRoute
);

/*server.use((req, res, next) => {
    if (req.body.token) {
        console.log('a')
    }

    next();
})*/
