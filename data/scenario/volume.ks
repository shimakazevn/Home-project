
[iscript ]
if(sf._skskpnt_volume === undefined){
    sf._skskpnt_volume = []
}
const volume = parseInt(TYRANO.kag.config.defaultSeVolume)
for(let i = 0; i < 4; i++){
    sf._skskpnt_volume[i] = sf._skskpnt_volume[i] === undefined ? volume : sf._skskpnt_volume[i]
    TYRANO.kag.ftag.startTag("seopt", {
        buf: i,
        volume: sf._skskpnt_volume[i],
    })
}
TYRANO.kag.ftag.startTag("jump", {
    target: "*volume_end",
})
[endscript ]
[s]

*volume_end
[return]
