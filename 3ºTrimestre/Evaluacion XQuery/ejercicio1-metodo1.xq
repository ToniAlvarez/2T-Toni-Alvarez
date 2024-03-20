let $x := //pokemon[@sexo = 'Femenino' and tipo = 'Agua']
return
<pokemon_agua_femeninos>{
    for $x in //pokemon
    return
    <pokemon>{
        <nombre numeroPokedex="{($x/nombre/@numeroPokedex)}">{data($x/nombre)}</nombre>,
        <estado vida="{data($x/estado/puntosVida)}">{data($x/puntosVida)}</estado>
    }</pokemon>
}</pokemon_agua_femeninos>
