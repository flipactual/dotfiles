#!/usr/bin/env node

const { homedir } = require('os');
const { readdir, remove, symlink } = require('fs-extra');

(async () => {
  try {
    await Promise.all(
      (await readdir('./files')).map(async path => {
        await remove(`${homedir()}/${path}`);
        return symlink(`${__dirname}/files/${path}`, `${homedir()}/${path}`);
      })
    );
    console.log(`👍 symlinks have been created in ${homedir()}`);
  } catch (error) {
    console.error('👎', error);
  }
})();
