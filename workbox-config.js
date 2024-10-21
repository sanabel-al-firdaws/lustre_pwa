module.exports = {
	globDirectory: 'dist',
	globPatterns:[
		'**/*.{mjs,js,css,html}',
	],
	swDest: 'dist/sw.js',
	ignoreURLParametersMatching: [
		/^utm_/,
		/^fbclid$/
	]
};