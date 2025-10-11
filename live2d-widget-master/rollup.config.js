import{nodeResolve}from"@rollup/plugin-node-resolve";import{createFilter}from"@rollup/pluginutils";function string(e={}){if(!e.include)throw Error("include option should be specified");let r=createFilter(e.include,e.exclude);return{name:"string",transform(e,i){if(r(i))return{code:`export default ${JSON.stringify(e)};`,map:{mappings:""}}},renderChunk(e,i,r=0){return`/*!
 * Live2D Widget
 * https://github.com/stevenjoezhang/live2d-widget
 */
`+e}}}export default{input:"src/waifu-tips.js",plugins:[nodeResolve(),string({include:"**/*.svg"})]};