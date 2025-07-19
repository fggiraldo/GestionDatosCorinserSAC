# 📚Trabajo Final: Gestión de los Datos

<p align="left">
  <img src="https://raw.githubusercontent.com/fggiraldo/GestionDatosCorinserSAC/main/assets/logo.png"/>
</p>


### 🚀 Portada

- Nombre del curso: Gestión de Datos

- Grupo: Individual

- Título del trabajo: Diseño e Implementación de una Solución de Datos Empresarial a la minorista Corinser SAC

- Integrantes: Fernando Giraldo

- Docente: Carlos Adrian Alarcon

### 🚀 Resumen ejecutivo
Corinser SAC una empresa peruana del sector comercial enfrenta desafios para consolidar, analizar y aprovechar su informacion operativa. 
Este trabajo presenta el diseño e implementación de un solución empresarial de datos permite integrar diversas fuentes de información y facilitar la visualización de indicadores clave de rendimiento.

La propuesta abarca desde la centralización y transformación de datos mediante herramientas como el MYSQL como gestor de base de datos y el R para la construcción de reportes. Se aplican conceptos estadisticos descriptivos, graficos comparativos y analisis de hipotesis (como pruebas t) orientadas a mejorar las ventas y la eficiencia operativa. 

### 🚀 Introducción y objetivos
La propuesta busca no solo gestionar eficientemente los datos de Corinser SAC, sino también fortalecer la capacidad de tomar desiciones con una mejor calidad de datos.

#### Objetivos
- `Centralizar y estructurar datos dispersos`.
- `Mejorar la toma de desiciones al aplicar análisis estadísticos (pruebas t, KPIs, outliers)`.
- `Visualizar resultados en reportes PDF o dashboards`.
- `Tener control de versiones GIT`.

### 🚀 Descripción del caso de negocio
Encontrar oportunidades de Ventas por Horario para mejorar la conversión y Segmentacion de los clientes de alto valor

### 🚀 Estructura del proyecto

```
├── dataraw/              # archivos de datos sin procesar (CSV, Excel, JSON, etc.)
├── analisis/             # consultas y visualizaciones
├── assets/               # archivos varios y recursos
  ├── dataraw/            # datos como recurso general del proyecto
├── etl/                  # scripts de transformación y carga
  ├── dataraw/            # fuente inicial de datos para transformación
├── r/                    # scripts de EDA y visualización en R
├── sql/                  # scripts de creación y carga
├── .github/              # configuración de gitHub
└── README.md             # información sobre el proyecto
```

### 🚀 Modelado de datos (ER, normalización, modelo dimensional)

<p align="left">
  <img src="https://raw.githubusercontent.com/fggiraldo/GestionDatosCorinserSAC/main/assets/modelo_estrella.jpg"/>
</p>

### 🚀 Implementación de la base de datos (scripts y explicación)
```
Dimensiones
├── 💣dim_fecha
├── 💣dim_canal
├── 💣dim_tienda
├── 💣dim_gerente
├── 💣dim_producto
├── 💣dim_moneda
├── 💣dim_promocion

Fact Tables
├── 🪄fact_inventario
├── 🪄fact_ventas
```

### 🚀 Procesos ETL (descripción y código)
