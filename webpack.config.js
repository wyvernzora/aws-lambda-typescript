const path = require('path');

module.exports = {
    entry: [
        './src/index.ts'
    ],
    module: {
        rules: [{
            test: /\.ts$/,
            use: 'ts-loader',
            exclude: /node_modules/
        }]
    },
    resolve: {
        extensions: [ '.ts', '.js' ]
    },
    target: 'node',
    output: {
        filename: 'index.js',
        path: path.resolve(__dirname, '.pkg/dist'),
        libraryTarget: 'commonjs'
    }
};
