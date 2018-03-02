# Reporte técnico de incidencias
### Errores
1. '[<prueba.ViewController 0x7fab4ae09bc0> setValue:forUndefinedKey:]: this class is not key value coding-compliant for the key outletText.'

Se solucionó corrigiendo el nombre "outtletText" a "outletText" y agregando @IBOutlet a la variable.

2. '-[prueba.ViewController actionButton:]: unrecognized selector sent to instance 0x7fb537d0a5b0'

Se solicionó borrando los dos elementos que sobraban en el storyborad

A partir de este momento dejaron de mandar errores, sólo se corrigió para hacer la funcionalidad que se pedía la cual consistió de la siguiente manera:

Se agregó @IBAction a la función actionButton y se hizo la referencia del botón para que cuando se hiciera el evento se ejecutara esa action.

Después únicamente se hizo el botón más grande para que se apreciara el texto correctamente.

### Conclusiones
De esta actividad me di cuenta que se tiene que tener muy bien referenciado cada objeto que se crea en el IB con cada action que va realizar o que se debe estar nombrado de la misma manera, además de no olvidar poner los tipos como son @IBOutlet y @IBAction
