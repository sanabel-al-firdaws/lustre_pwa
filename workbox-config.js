module.exports = {
	globDirectory: 'priv/static',
	globPatterns:[
		'**/*.{mjs,js,css,html}',
		'../../index.html'
	],
	swDest: 'priv/static/sw.js',
	ignoreURLParametersMatching: [
		/^utm_/,
		/^fbclid$/
	]
};