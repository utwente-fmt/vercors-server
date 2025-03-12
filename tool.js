let util = require('./util');

exports.getProcess = function getProcess(arguments, rootPath, files) {
  let absoluteFiles = [];

  for(let path of util.requireList(util.requireAttr(arguments, 'files'))) {
    absoluteFiles.push(util.requirePath(path, files, rootPath));
  }

  return {
    command: 'vercors',
    args: absoluteFiles.concat(['--progress']),
    options: {}
  };
}
