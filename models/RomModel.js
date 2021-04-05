const MainModel = require("./MainModel");

class RomModel extends MainModel {
    table = 'rom';
}

module.exports = new RomModel();
