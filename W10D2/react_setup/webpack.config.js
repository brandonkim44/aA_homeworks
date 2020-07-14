const path = require('path');

module.exports = {
    context: __dirname, //need this?
    entry: './app.jsx',
    output: {
        path: path.resolve(__dirname), //need this?
        filename: './bundle.js'
    }, 
    module: { //need to memorize?
        rules: [
            {
                test: /\.jsx?$/,
                exclude: /(node_modules)/,
                use: {
                    loader: 'babel-loader',
                    query: {
                        presets: ['@babel/env', '@babel/react']
                    }
                },
            }
        ]
    },
    devtool: 'source-map',
    resolve: {
        extensions: ['.js', '.jsx', '*']
    }
};