let $x := //pokemon[@sexo = 'Femenino' and tipo = 'Agua']
return
<pokemon_agua_femeninos>{
    for $x in //pokemon
    return
    element pokemon {
        element nombre {
            attribute numeroPokedex {($x/nombre/@numeroPokedex)},
            data($x/nombre)
        },
        element estado {
            attribute vida {data($x/estado/puntosVida)}
        }
    }
}</pokemon_agua_femeninos>
