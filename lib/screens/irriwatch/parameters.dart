import 'package:flutter/material.dart';

class Parameters extends StatefulWidget {
  const Parameters({super.key});

  @override
  _ParametersState createState() => _ParametersState();
}

class _ParametersState extends State<Parameters> {
  final List<Map<String, String>> parameters = [
    {'title': 'Fecha', 'description': 'La fecha del registro.'},
    {'title': 'Nombre', 'description': 'Nombre del campo o parcela.'},
    {'title': 'Área (ha)', 'description': 'Superficie en hectáreas.'},
    {
      'title': 'Planificador de riego',
      'description':
          'Es una herramienta que señala la cantidad de agua aconsejada a regar (lámina de riego, mm) en días dados en un campo a manera de evitar el estrés hídrico (responde las preguntas donde, cuando y cuanto). Está configurado para 7 días en el futuro tomando en cuenta las demandas reales evapotranspirativas, humedad del suelo y condiciones climáticas.'
    },
    {
      'title': 'Estatus de humedad',
      'description':
          'Es una herramienta con escala de colores que muestra el estatus de humedad a través de la siguiente clasificación: 1) Seco (rojo; humedad del suelo entre punto crítico y punto de marchitamiento); 2) Estresado (naranja; humedad del suelo entre el criterio mínimo para asesorar riego y humedad crítica); 3) Adecuado (verde; humedad del suelo entre capacidad de campo y criterio mínimo para asesorar riego); 4) Sobre humedecido (azul; humedad del suelo por encima de capacidad de campo); 5) Vegetación escasa (amarillo paja; menos del 5% de vegetación, no se dota información de estatus de humedad - no hay cultivo).'
    },
    {
      'title': 'Balance Hídrico',
      'description':
          'El balance hídrico es un método que señala las entradas y salidas de agua en un sistema de producción. Un balance hídrico que considera como umbral la profundidad de la raíz del cultivo tiene como entradas el riego, precipitación y capilaridad, mientras que salidas a la evapotranspiración, escorrentía y percolación, siempre considerando el cambio de humedad en el suelo en un tiempo dado. NAX define al balance hídrico como un parámetro que señala si el cultivo está perdiendo o ganando agua, siendo un enfoque que no es completamente correcto puesto que la planta debe de perder agua por efectos de evapotranspiración, pero mantener la tasa evapotranspirativa a través de niveles adecuados de humedad en el suelo.'
    },
    {
      'title': 'Evapotranspiración real (ETr) (mm/d)',
      'description':
          'La evapotranspiración real es el flujo total de vapor de agua del suelo a la atmósfera, mismo que comprende la transpiración (T) a través de las hojas y la evaporación (E) del suelo y el agua estancada, así como la evaporación por intercepción de las hojas húmedas.'
    },
    {
      'title': 'Evapotranspiración real acumulada (ETr) (mm)',
      'description':
          'Es la acumulación de la evapotranspiración real en un tiempo determinado (p.e., ciclo de cultivo). Es importante para indicadores de desempeño como productividad del agua.'
    },
    {
      'title': 'Evapotranspiración real hoy + 1 día (mm/d)',
      'description':
          'Es la evapotranspiración real de hoy + 1 día (pasado mañana).'
    },
    {
      'title': 'Evapotranspiración real hoy + 2 días (mm/d)',
      'description': 'Es la evapotranspiración real de hoy + 2 días.'
    },
    {
      'title': 'Evapotranspiración real hoy + 3 días (mm/d)',
      'description': 'Es la evapotranspiración real de hoy + 3 días.'
    },
    {
      'title': 'Evapotranspiración real hoy + 4 días (mm/d)',
      'description': 'Es la evapotranspiración real de hoy + 4 días.'
    },
    {
      'title': 'Evapotranspiración real hoy + 5 días (mm/d)',
      'description': 'Es la evapotranspiración real de hoy + 5 días.'
    },
    {
      'title': 'Evapotranspiración real hoy + 6 días (mm/d)',
      'description': 'Es la evapotranspiración real de hoy + 6 días.'
    },
    {
      'title': 'Evapotranspiración real hoy + 7 días (mm/d)',
      'description': 'Es la evapotranspiración real de hoy + 7 días.'
    },
    {
      'title': 'Transpiración real (Tr) (mm/d)',
      'description':
          'Representa la cantidad de agua que se evapora diariamente a través de las plantas/hojas. Este es el componente T (transpiración) de ETr (evapotranspiración real), es decir, el agua beneficiosa. Es importante para calcular la producción de materia seca.'
    },
    {
      'title': 'Transpiración real acumulada (Tr) (mm)',
      'description':
          'Es la acumulación de la transpiración real del cultivo en un tiempo determinado (p.e., ciclo de cultivo).'
    },
    {
      'title': 'Transpiración potencial (Tp) (mm/d)',
      'description': 'Es la transpiración máxima en el cultivo.'
    },
    {
      'title': 'Evapotranspiración de referencia (ETo) (mm/d)',
      'description':
          'Parámetro de evapotranspiración estándar basado en una superficie que supone pasto como cultivo de referencia, bien regado, que crece y cubre continuamente la superficie del suelo, con altura uniforme de 0.12 m, resistencia superficial de 70 s m-1 y albedo de 0.23 (ecuación de Penman-Monteith).'
    },
    {
      'title':
          'Pronóstico acumulado de la evapotranspiración de referencia en los siguientes 8 días (mm)',
      'description':
          'Acumulación del pronóstico de la evapotranspiración de referencia en los siguientes 8 días.'
    },
    {
      'title': 'Coeficiente de cultivo real (Kc real) (-)',
      'description':
          'Es la relación entre la evapotranspiración real y la evapotranspiración de referencia (Penman-Monteith).'
    },
    {
      'title': 'Evapotranspiración real debida al agua aplicada',
      'description':
          'Es la evapotranspiración real del agua aplicada de riego. Después de calcular la evapotranspiración real a partir del balance energético (SEBAL), la ETr es separada en ETr debido al agua aplicada y la ETr debido a la precipitación. Esta es una métrica importante para los derechos de agua (o concesiones).'
    },
    {
      'title': 'Evapotranspiración real debida al agua aplicada acumulada',
      'description':
          'Es la acumulación de la evapotranspiración debido al agua aplicada en un periodo de tiempo (p.e., ciclo de cultivo).'
    },
    {
      'title': 'Riego mañana (SI/NO)',
      'description': 'Define si es necesario regar mañana.'
    },
    {
      'title': 'Fecha del próximo riego (SI/NO)',
      'description': 'Señala la fecha del siguiente riego en el campo.'
    },
    {
      'title': 'Agua recomendada a aplicar en riego hoy (mm)',
      'description':
          'Define la lámina de riego que será necesaria aplicar en un día y campo dato. Está integrada en un planificador de riego y se calcula como la cantidad de agua necesaria para restaurar la humedad del suelo a un almacenamiento deseable para mantener la humedad adecuada y mantener la tasa evapotranspirativa de la planta hasta el próximo riego.'
    },
    {
      'title':
          'Pronóstico de agua recomendada a aplicar en riego hoy + 1 día (mm/d)',
      'description': 'Es la lámina de riego a aplicar hoy + 1 día (mañana).'
    },
    {
      'title':
          'Pronóstico de agua recomendada a aplicar en riego hoy + 2 días (mm/d)',
      'description':
          'Es la lámina de riego a aplicar hoy + 2 días (pasado mañana).'
    },
    {
      'title':
          'Pronóstico de agua recomendada a aplicar en riego hoy + 3 días (mm/d)',
      'description': 'Es la lámina de riego a aplicar hoy + 3 días.'
    },
    {
      'title':
          'Pronóstico de agua recomendada a aplicar en riego hoy + 4 días (mm/d)',
      'description': 'Es la lámina de riego a aplicar hoy + 4 días.'
    },
    {
      'title':
          'Pronóstico de agua recomendada a aplicar en riego hoy + 5 días (mm/d)',
      'description': 'Es la lámina de riego a aplicar hoy + 5 días.'
    },
    {
      'title':
          'Pronóstico de agua recomendada a aplicar en riego hoy + 6 días (mm/d)',
      'description': 'Es la lámina de riego a aplicar hoy + 6 días.'
    },
    {
      'title':
          'Pronóstico de agua recomendada a aplicar en riego hoy + 7 días (mm/d)',
      'description': 'Es la lámina de riego a aplicar hoy + 7 días.'
    },
    {
      'title': 'Agua aplicada en riego',
      'description':
          'Es la cantidad de agua que ha sido regada, calculada a partir de un balance hídrico, teniendo en cuenta el cambio en el almacenamiento de agua del suelo, precipitación, percolación, escorrentía y evapotranspiración real, así como las eficiencias de los diferentes sistemas de riego.'
    },
    {
      'title': 'Promedio de agua aplicada en los últimos 10 días',
      'description':
          'Señala la cantidad de agua aplicada (mm) a través de los diversos eventos de riego en los últimos 10 días (media móvil).'
    },
    {
      'title': 'Área que requiere riego (%)',
      'description':
          'Establece el porcentaje del área que necesita riego (es decir, cuando la humedad del suelo es cercana, igual o inferior al nivel crítico de humedad en el suelo).'
    },
    {
      'title': 'Área sobre humedecida (%)',
      'description':
          'Establece el porcentaje del área que se encuentra sobre humedecida (es decir, cuando la humedad del suelo se encuentra por arriba de capacidad de campo). Señala el riego excesivo y problemas de drenaje agrícola (incentivado por agua de lluvia o riego).'
    },
    {
      'title': 'Eficiencia de riego (%)',
      'description':
          'Es el cociente entre la evapotranspiración real y el agua aplicada. Señala en qué medida el agua aplicada ha cubierto las necesidades evapotranspirativas del cultivo.'
    },
    {
      'title': 'Productividad del agua (kg/m3)',
      'description':
          'Indicador que señala la cantidad de materia seca producida por metro cúbico de agua consumida (evapotranspirada).'
    },
    {
      'title': 'Humedad del suelo en la zona radicular (m3/m3)',
      'description':
          'Es la humedad del suelo en la zona de la raíz calculada a partir del potencial hídrico del suelo (utilizando curvas de retención de humedad con base a clases texturales de suelo). En buenas prácticas de riego, la humedad del suelo en la zona de la raíz debe mantenerse entre la humedad crítica del suelo y la humedad del suelo de capacidad de campo.'
    },
    {
      'title': 'Humedad del suelo crítica en la zona radicular (m3/m3)',
      'description':
          'Es el nivel de humedad del suelo en el que los cultivos comienzan a sufrir estrés por falta de agua. Es un parámetro variable en función del clima y de la temperatura de las hojas que permite al usuario evitar cualquier estrés hídrico. La humedad del suelo siempre debe estar por encima del nivel crítico de humedad del suelo para evitar el estrés en el cultivo y con ello, pérdida en la producción.'
    },
    {
      'title':
          'Humedad del suelo a capacidad de campo en la zona radicular (m3/m3)',
      'description':
          'Es el nivel de humedad del suelo a capacidad de campo (máxima retención de agua en el suelo dado efectos gravitacionales).'
    },
    {
      'title':
          'Humedad del suelo en punto de marchitamiento permanente en la zona radicular (m3/m3)',
      'description':
          'Es el nivel de humedad del suelo a punto de marchitamiento permanente (agua no disponible o virtual).'
    },
    {
      'title': 'Humedad del suelo a saturación en la zona radicular (m3/m3)',
      'description':
          'Es el nivel de humedad del suelo a saturación, en la que todos los poros del suelo están llenos de agua.'
    },
    {
      'title':
          'Humedad del suelo en la zona radicular en percentil 5 % (m3/m3)',
      'description':
          'Es la humedad del suelo más alta en un campo (percentil 95).'
    },
    {
      'title':
          'Humedad del suelo en la zona radicular en percentil G5 % (m3/m3)',
      'description':
          'Es la humedad del suelo más baja en un campo (percentil 5).'
    },
    {
      'title': 'Plenitud de depósito de agua en la zona radicular (%)',
      'description':
          'Señala el nivel de humedad o plenitud de almacenamiento de agua en la zona radicular entre la capacidad de campo y el punto de marchitamiento (0-100%).'
    },
    {
      'title': 'Capacidad de retención de humedad en el suelo (mm/m)',
      'description':
          'Es la capacidad de retención de agua en el suelo, siendo la cantidad de agua disponible para el cultivo entre capacidad del campo y el punto de marchitamiento permanente. Depende de su clase textural.'
    },
    {
      'title': 'Uniformidad de la humedad del suelo (desv.est/prom)',
      'description':
          'Indica la desviación estándar de la humedad del suelo dentro de un campo dividida por la humedad media del suelo en el campo. Un valor bajo (<0,1) indica muy buena uniformidad de la humedad dentro del campo.'
    },
    {
      'title':
          'Pronóstico de humedad del suelo en la zona radicular si riego recomendado es aplicado hoy',
      'description':
          'Es el pronóstico de humedad en el suelo que se alcanzaría si se aplica el riego aconsejado hoy, definido en el planificador de riego.'
    },
    {
      'title':
          'Pronóstico de humedad del suelo en la zona radicular si el riego recomendado es aplicado hoy + 1 día (mañana)',
      'description':
          'Es el pronóstico de humedad en el suelo que se alcanzaría si se aplica el riego aconsejado hoy + 1 día, definido en el planificador de riego.'
    },
    {
      'title':
          'Pronóstico de humedad del suelo en la zona radicular si el riego recomendado es aplicado hoy + 2 días (pasado mañana)',
      'description':
          'Es el pronóstico de humedad en el suelo que se alcanzaría si se aplica el riego aconsejado hoy + 2 días, definido en el planificador de riego.'
    },
    {
      'title':
          'Pronóstico de humedad del suelo en la zona radicular si el riego recomendado es aplicado hoy + 3 días',
      'description':
          'Es el pronóstico de humedad en el suelo que se alcanzaría si se aplica el riego aconsejado hoy + 3 días, definido en el planificador de riego.'
    },
    {
      'title':
          'Pronóstico de humedad del suelo en la zona radicular si el riego recomendado es aplicado hoy + 4 días',
      'description':
          'Es el pronóstico de humedad en el suelo que se alcanzaría si se aplica el riego aconsejado hoy + 4 días, definido en el planificador de riego.'
    },
    {
      'title':
          'Pronóstico de humedad del suelo en la zona radicular si el riego recomendado es aplicado hoy + 5 días',
      'description':
          'Es el pronóstico de humedad en el suelo que se alcanzaría si se aplica el riego aconsejado hoy + 5 días, definido en el planificador de riego.'
    },
    {
      'title':
          'Pronóstico de humedad del suelo en la zona radicular si el riego recomendado es aplicado hoy + 6 días',
      'description':
          'Es el pronóstico de humedad en el suelo que se alcanzaría si se aplica el riego aconsejado hoy + 6 días, definido en el planificador de riego.'
    },
    {
      'title':
          'Pronóstico de humedad del suelo en la zona radicular si el riego recomendado es aplicado hoy + 7 días',
      'description':
          'Es el pronóstico de humedad en el suelo que se alcanzaría si se aplica el riego aconsejado hoy + 7 días, definido en el planificador de riego.'
    },
    {
      'title':
          'Pronóstico de humedad del suelo en la zona radicular si riego recomendado no es aplicado hoy',
      'description':
          'Es el pronóstico de humedad en el suelo que se alcanzaría si no se aplica el riego aconsejado hoy, los eventos de riego no llevados a cabo son considerados en el planificador de riego.'
    },
    {
      'title':
          'Pronóstico de humedad del suelo en la zona radicular si el riego recomendado no es aplicado hoy + 1 día (mañana)',
      'description':
          'Es el pronóstico de humedad en el suelo que se alcanzaría si no se aplica el riego aconsejado hoy + 1 día, los eventos de riego no llevados a cabo son considerados en el planificador de riego.'
    },
    {
      'title':
          'Pronóstico de humedad del suelo en la zona radicular si el riego recomendado es aplicado hoy + 2 días (pasado mañana)',
      'description':
          'Es el pronóstico de humedad en el suelo que se alcanzaría si se aplica el riego aconsejado hoy + 2 días, definido en el planificador de riego.'
    },
    {
      'title':
          'Pronóstico de humedad del suelo en la zona radicular si el riego recomendado es aplicado hoy + 3 días',
      'description':
          'Es el pronóstico de humedad en el suelo que se alcanzaría si se aplica el riego aconsejado hoy + 3 días, definido en el planificador de riego.'
    },
    {
      'title':
          'Pronóstico de humedad del suelo en la zona radicular si el riego recomendado es aplicado hoy + 4 días',
      'description':
          'Es el pronóstico de humedad en el suelo que se alcanzaría si se aplica el riego aconsejado hoy + 4 días, definido en el planificador de riego.'
    },
    {
      'title':
          'Pronóstico de humedad del suelo en la zona radicular si el riego recomendado es aplicado hoy + 5 días',
      'description':
          'Es el pronóstico de humedad en el suelo que se alcanzaría si se aplica el riego aconsejado hoy + 5 días, definido en el planificador de riego.'
    },
    {
      'title':
          'Pronóstico de humedad del suelo en la zona radicular si el riego recomendado es aplicado hoy + 6 días',
      'description':
          'Es el pronóstico de humedad en el suelo que se alcanzaría si se aplica el riego aconsejado hoy + 6 días, definido en el planificador de riego.'
    },
    {
      'title':
          'Pronóstico de humedad del suelo en la zona radicular si el riego recomendado es aplicado hoy + 7 días',
      'description':
          'Es el pronóstico de humedad en el suelo que se alcanzaría si se aplica el riego aconsejado hoy + 7 días, definido en el planificador de riego.'
    },
    {
      'title':
          'Pronóstico de humedad del suelo en la zona radicular si riego recomendado no es aplicado hoy',
      'description':
          'Es el pronóstico de humedad en el suelo que se alcanzaría si no se aplica el riego aconsejado hoy, los eventos de riego no llevados a cabo son considerados en el planificador de riego.'
    },
    {
      'title':
          'Pronóstico de humedad del suelo en la zona radicular si el riego recomendado no es aplicado hoy + 1 día (mañana)',
      'description':
          'Es el pronóstico de humedad en el suelo que se alcanzaría si no se aplica el riego aconsejado hoy + 1 día, los eventos de riego no llevados a cabo son considerados en el planificador de riego.'
    },
    {
      'title':
          'Pronóstico de humedad del suelo en la zona radicular si el riego recomendado no es aplicado hoy + 2 días (pasado mañana)',
      'description':
          'Es el pronóstico de humedad en el suelo que se alcanzaría si no se aplica el riego aconsejado hoy + 2 días, los eventos de riego no llevados a cabo son considerados en el planificador de riego.'
    },
    {
      'title':
          'Pronóstico de humedad del suelo en la zona radicular si el riego recomendado no es aplicado hoy + 3 días',
      'description':
          'Es el pronóstico de humedad en el suelo que se alcanzaría si no se aplica el riego aconsejado hoy + 3 días, los eventos de riego no llevados a cabo son considerados en el planificador de riego.'
    },
    {
      'title':
          'Pronóstico de humedad del suelo en la zona radicular si el riego recomendado no es aplicado hoy + 4 días',
      'description':
          'Es el pronóstico de humedad en el suelo que se alcanzaría si no se aplica el riego aconsejado hoy + 4 días, los eventos de riego no llevados a cabo son considerados en el planificador de riego.'
    },
    {
      'title':
          'Pronóstico de humedad del suelo en la zona radicular si el riego recomendado no es aplicado hoy + 5 días',
      'description':
          'Es el pronóstico de humedad en el suelo que se alcanzaría si no se aplica el riego aconsejado hoy + 5 días, los eventos de riego no llevados a cabo son considerados en el planificador de riego.'
    },
    {
      'title':
          'Pronóstico de humedad del suelo en la zona radicular si el riego recomendado no es aplicado hoy + 6 días',
      'description':
          'Es el pronóstico de humedad en el suelo que se alcanzaría si no se aplica el riego aconsejado hoy + 6 días, los eventos de riego no llevados a cabo son considerados en el planificador de riego.'
    },
    {
      'title':
          'Pronóstico de humedad del suelo en la zona radicular si el riego recomendado no es aplicado hoy + 7 días',
      'description':
          'Es el pronóstico de humedad en el suelo que se alcanzaría si no se aplica el riego aconsejado hoy + 7 días, los eventos de riego no llevados a cabo son considerados en el planificador de riego.'
    },
    {
      'title': 'Potencial hídrico en la zona radicular (hPa o cm)',
      'description':
          'Es el potencial hídrico del suelo en la zona radicular, en otras palabras, es la presión negativa o succión del suelo que define la presencia de agua en el mismo. Es altamente reactivo cuando un riego ha sido llevado a cabo.'
    },
    {
      'title': 'Potencial hídrico crítico en la zona radicular (hPa o cm)',
      'description':
          'Es el potencial hídrico del suelo en la zona radicular en el cual comienza el estrés por falta de agua en el cultivo. Es un parámetro variable en función del clima y la tolerancia al estrés hídrico del cultivo.'
    },
    {
      'title':
          'Potencial hídrico a capacidad de campo en la zona radicular (hPa o cm)',
      'description':
          'Es el potencial hídrico a capacidad de campo, mismo que se encuentra a -100 hPa.'
    },
    {
      'title':
          'Potencial hídrico en la zona radicular en percentil 5 % (hPa o cm)',
      'description':
          'Es el percentil 5 del potencial hídrico del suelo diario (o el 5 % inferior). Representa el valor representativo más bajo del potencial hídrico del suelo en un campo.'
    },
    {
      'title':
          'Potencial hídrico en la zona radicular en percentil G5 % (hPa o cm)',
      'description':
          'Es el percentil 95 del potencial hídrico del suelo diario (o el 5 % superior). Representa el valor representativo más alto del potencial hídrico del suelo en un campo.'
    },
    {
      'title': 'Temperatura del suelo diaria a 0cm (°C)',
      'description':
          'Es la temperatura de la superficie del suelo promedio en un día (al ras).'
    },
    {
      'title': 'Temperatura del suelo diaria a 10cm (°C)',
      'description':
          'Es la temperatura promedio en la capa superior del suelo (aprox. 10 cm de profundidad).'
    },
    {
      'title': 'Temperatura del suelo al paso del satélite (°C)',
      'description':
          'Es la temperatura de la superficie del suelo al momento del paso del satélite.'
    },
    {
      'title': 'Materia orgánica (%)',
      'description':
          'Es el porcentaje de materia orgánica en el suelo (presente en el suelo o por parte de insumos de los agricultores).'
    },
    {
      'title': 'Suministro de carbono en el suelo (kg C/ha/d)',
      'description':
          'Es la cantidad estimada de residuos del cultivo suministrados por debajo de la superficie del suelo.'
    },
    {
      'title': 'Descomposición de carbono en el suelo (kg C/ha/d)',
      'description':
          'Es la cantidad de carbono descompuesto en el suelo en función de la humedad, temperatura, pH y la cantidad de residuos de carbono en el suelo.'
    },
    {
      'title': 'Suministro neto de carbono en el suelo (kg C/ha/d)',
      'description':
          'Es la diferencia entre el aporte de carbono al suelo y la descomposición del carbono. Representa la cantidad de carbono secuestrado en el suelo a partir de los residuos del cultivo.'
    },
    {
      'title': 'Producción de materia seca diaria (kg/ha/d)',
      'description':
          'Representa la materia seca de toda la planta incluyendo raíces, tallos, hojas, flores, frutos, etc., siendo la cantidad de carbohidratos que forma la planta diariamente durante el proceso de fotosíntesis.'
    },
    {
      'title': 'Producción de materia seca acumulada (kg/ha)',
      'description':
          'Es la acumulación de la producción de materia seca desde el inicio del ciclo productivo. Este parámetro, con ayuda de un índice de cosecha, da lugar a estimaciones del rendimiento final.'
    },
    {
      'title': 'Producción de materia seca sin déficit hídrico (kg/ha/d)',
      'description':
          'Es la producción de materia seca real diaria si el cultivo no estuviera bajo estrés hídrico. En caso de no haber estrés hídrico, es igual a la producción real de materia seca.'
    },
    {
      'title': 'Producción óptima/alcanzable (kg/ha/d)',
      'description':
          'Representa el percentil 95 de la producción de materia seca diaria dentro de un campo, es decir, el 10 % del área con mejor rendimiento en términos de producción de materia seca (con relación a píxeles).'
    },
    {
      'title': 'Producción de materia seca debajo del suelo (kg/ha)',
      'description':
          'Es una fracción de la producción de materia seca que se encuentra bajo del suelo.'
    },
    {
      'title': 'Producción de materia seca por arriba del suelo (kg/ha)',
      'description':
          'Es una fracción de la producción de materia seca que se encuentra por arriba del suelo.'
    },
    {
      'title': 'Producción de materia seca acumulada en percentil 5 % (kg/ha)',
      'description':
          'Es el percentil 5 de la producción de materia seca diaria (o el 5 % inferior). Representa el valor representativo más bajo de la producción.'
    },
    {
      'title': 'Producción de materia seca acumulada en percentil G5 % (kg/ha)',
      'description':
          'Es el percentil 95 de la producción de materia seca diaria (o el 5 % superior). Representa el valor representativo más alto de la producción.'
    },
    {
      'title': 'Brecha de producción (kg/ha/d)',
      'description':
          'Representa la diferencia diaria entre la producción de materia seca diaria óptima y la producción real de materia seca.'
    },
    {
      'title': 'Brecha de producción acumulada (kg/ha)',
      'description':
          'Es la acumulación de la brecha de producción en un periodo de tiempo definido (p.e. desde la siembra).'
    },
    {
      'title': 'NDVI (Índice de Vegetación de Diferencia Normalizada) (-)',
      'description':
          'Representa el Índice de Vegetación de Diferencia Normalizada [(NIR - R)/(NIR + R)].'
    },
    {
      'title': 'Cobertura vegetal (%)',
      'description': 'Es la fracción de suelo cubierta por vegetación.'
    },
    {
      'title': 'Uniformidad de la cobertura vegetal (desv.esta/prom)',
      'description':
          'Es la desviación estándar de la cobertura vegetal dentro de un campo dividida por la cobertura vegetal promedio del campo. Un valor bajo (<0.1) indica una uniformidad muy buena de la cobertura vegetal dentro del campo.'
    },
    {
      'title': 'Cobertura vegetal en percentil 5 (%)',
      'description':
          'Es el percentil 5 de la cobertura vegetal (o el 5 % inferior). Representa la fracción más baja de suelo cubierta por vegetación dentro de un campo.'
    },
    {
      'title': 'Cobertura vegetal en percentil G5 (%)',
      'description':
          'Es el percentil 95 de la cobertura vegetal (o el 5 % superior). Representa la fracción más alta de suelo cubierta por vegetación dentro de un campo.'
    },
    {
      'title': 'Profundidad efectiva de la raíz (mm)',
      'description':
          'Representa la profundidad efectiva de la raíz con base a la profundidad total de la misma. Varía con relación al tipo de cultivo y al propio crecimiento del mismo en el tiempo. Es importante para cuestiones de riego.'
    },
    {
      'title': 'Conductancia estomática (mm/s)',
      'description':
          'Es la apertura de los estomas de las hojas que permite el intercambio gaseoso planta-ambiente: salida de agua (transpiración) y entrada de CO2.'
    },
    {
      'title': 'Potencial hídrico de las hojas a medio día (bar)',
      'description':
          'Señala el potencial hídrico de las hojas. Es un indicador del estatus de estrés hídrico en la planta.'
    },
    {
      'title': 'Temperatura de las hojas al paso del satélite a medio día (°C)',
      'description':
          'Representa la temperatura de las hojas justo al paso del satélite (temperatura instantánea).'
    },
    {
      'title': 'Porcentaje de humedad en la caña (%) (especiales para caña)',
      'description':
          'Señala la humedad de la caña en una escala de 0- 100 %. Es un parámetro esencial para la toma de decisiones en cosecha.'
    },
    {
      'title': 'Porcentaje de azúcar en la caña (%) (especiales para caña)',
      'description':
          'Señala el porcentaje de azúcar potencialmente obtenible del rendimiento de la caña de azúcar.'
    },
    {
      'title': 'Nitrógeno en las hojas (%)',
      'description':
          'Representa el porcentaje de nitrógeno en las hojas (o cantidad de clorofila).'
    },
    {
      'title': 'Absorción acumulada de nitrógeno en el cultivo (kg/ha)',
      'description':
          'Señala la acumulación o consumo de nitrógeno en el cultivo tomando como referencia el inicio del establecimiento del mismo.'
    },
    {
      'title': 'Eficiencia de fertilizado',
      'description':
          'Señala la respuesta del uso de nitrógeno en campo con relación a un nivel esperado del mismo, puede ser contrastado con un límite de referencia o mostrado en un rango del 0 al 100% (óptimo).'
    },
    {
      'title': 'Precipitación promedio los últimos 10 días (mm/día)',
      'description':
          'Promedio de precipitación bruta en los últimos 10 días (media móvil), depende de modelos climáticos.'
    },
    {
      'title': 'Precipitación acumulada (mm)',
      'description':
          'Precipitación acumulada en un periodo de tiempo específico (p.e., desde el inicio del ciclo de productivo).'
    },
    {
      'title': 'Pronóstico de lluvia hoy (mm/d)',
      'description':
          'Lluvia esperada con base en un pronóstico de precipitación para el día de hoy.'
    },
    {
      'title': 'Pronóstico de lluvia hoy + 1 día (mm/d)',
      'description': 'Pronóstico de precipitación hoy + 1 día.'
    },
    {
      'title': 'Pronóstico de lluvia hoy + 2 días (mm/d)',
      'description': 'Pronóstico de precipitación hoy + 2 días.'
    },
    {
      'title': 'Pronóstico de lluvia hoy + 3 días (mm/d)',
      'description': 'Pronóstico de precipitación hoy + 3 días.'
    },
    {
      'title': 'Pronóstico de lluvia hoy + 4 días (mm/d)',
      'description': 'Pronóstico de precipitación hoy + 4 días.'
    },
    {
      'title': 'Pronóstico de lluvia hoy + 5 días (mm/d)',
      'description': 'Pronóstico de precipitación hoy + 5 días.'
    },
    {
      'title': 'Pronóstico de lluvia hoy + 6 días (mm/d)',
      'description': 'Pronóstico de precipitación hoy + 6 días.'
    },
    {
      'title': 'Pronóstico de lluvia hoy + 7 días (mm/d)',
      'description': 'Pronóstico de precipitación hoy + 7 días.'
    },
    {
      'title': 'Temperatura del aire diaria (°C)',
      'description':
          'Representa la temperatura promedio del aire en un día (24 horas).'
    },
    {
      'title': 'Humedad relativa diaria (%)',
      'description':
          'Representa la relación entre la cantidad de vapor de agua contenida en el aire (humedad absoluta) y la máxima cantidad que el aire puede contener a una temperatura dada (humedad absoluta de saturación), en este caso, el promedio de temperatura en un día (24 horas).'
    },
    {
      'title': 'Humedad relativa mínima (%)',
      'description': 'Representa la humedad relativa más baja en un día.'
    },
    {
      'title': 'Radiación solar acumulada (W/m2)',
      'description':
          'Es la acumulación de la radiación solar en un periodo de tiempo específico (p.e., en un ciclo productivo).'
    },
    {
      'title': 'Grados días termales acumulados (°C)',
      'description':
          'Representa una medida de acumulación de calor por parte del cultivo desde la fecha de siembra. Se utiliza a menudo para predecir las etapas fenológicas de un cultivo y cuándo alcanza su madurez.'
    },
    {
      'title': 'Días con actualización termal',
      'description':
          'Representa la fecha en la cual hubo una actualización de imagen termal.'
    },
    {
      'title': 'Días con actualización visible',
      'description':
          'Representa la fecha en la cual hubo una actualización de imagen visible.'
    },
  ];

  String query = '';

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> filteredParameters = parameters
        .where((param) =>
            param['title']!.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Parámetros de Salida',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(56),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SearchBar(
              hintText: "Buscar...",
              onChanged: (value) {
                setState(() {
                  query = value;
                });
              },
              leading: const Icon(Icons.search),
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: filteredParameters.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(filteredParameters[index]['title']!),
            leading: const Icon(Icons.info_outline),
            onTap: () {
              _showDescriptionDialog(
                  context,
                  filteredParameters[index]['title']!,
                  filteredParameters[index]['description']!);
            },
          );
        },
      ),
    );
  }

  void _showDescriptionDialog(
      BuildContext context, String title, String description) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: Text(description),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cerrar'),
            )
          ],
        );
      },
    );
  }
}
