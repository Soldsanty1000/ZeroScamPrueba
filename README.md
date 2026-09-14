# ZeroScam

Aplicación para iPhone enfocada en la prevención y el reporte de fraudes. Permite a las
personas usuarias consultar guías de seguridad, revisar artículos informativos, reportar
intentos de fraude, buscar reportes de la comunidad y administrar su perfil y su cuenta.

Este repositorio contiene el proyecto de prueba **PreubaZeroScam**, desarrollado en Swift
con UIKit y Storyboards, utilizado para practicar el flujo de colaboración con Git y GitHub.

## Datos del proyecto

| Dato | Valor |
|---|---|
| Nombre de la aplicación | ZeroScam |
| Proyecto Xcode | `PreubaZeroScam.xcodeproj` |
| Lenguaje | Swift |
| Framework de interfaz | UIKit (UIViewController + Storyboard) |
| Versión de Xcode | Xcode 26.x |
| Simulador utilizado | iPhone 17 Pro Max |
| Rama principal | `main` |

## Integrantes del equipo

| Integrante | Usuario de GitHub |
|---|---|
| Sebastián | [@SEBASidkk](https://github.com/SEBASidkk) |
| Santiago | [@Soldsanty1000](https://github.com/Soldsanty1000) |
| Alejandro R. | [@alexrodrd](https://github.com/alexrodrd) |
| José Emilio | [@Jose-Emilio1210](https://github.com/Jose-Emilio1210) |

## Asignación de funcionalidades

| Integrante | Funcionalidad | Rama |
|---|---|---|
| @SEBASidkk | Pantalla inicial de inicio de sesión | `feature/view-controller` |
| @SEBASidkk | Guía de seguridad | `feature/security-guide` |
| @SEBASidkk | Pantalla de configuración | `feature/settings-view` |
| @SEBASidkk | Cierre de sesión | `feature/sign-out` |
| @Soldsanty1000 | Vista de artículo informativo | `feature/ArticleViewController` |
| @Soldsanty1000 | Cambio de contraseña | `feature/ChangePasswordViewController` |
| @Soldsanty1000 | Estadísticas de la comunidad | `feature/CommunityStatsViewController` |
| @Soldsanty1000 | Edición de perfil | `feature/EditProfileViewController` |
| @alexrodrd | Formulario de reporte | `feature/report-view` |
| @alexrodrd | Detalle de un reporte | `feature/report-detail-view` |
| @alexrodrd | Confirmación de reporte enviado | `feature/report-success-view` |
| @alexrodrd | Búsqueda de reportes | `feature/search-view` |
| @Jose-Emilio1210 | Pantalla principal (home) | `Home-View-Controller` |
| @Jose-Emilio1210 | Perfil de la persona usuaria | `ProfileViewController` |
| @Jose-Emilio1210 | Aviso de privacidad | `PrivacyViewController` |
| @Jose-Emilio1210 | Registro de cuenta | `RegisterViewController` |

## Convención para nombrar ramas

Las ramas nuevas se crean a partir de la versión más reciente de `main` y siguen la convención:

```
feature/nombre-breve-de-la-funcionalidad
```

Ejemplos: `feature/home-view`, `feature/item-list`, `feature/input-validation`.

Para correcciones posteriores a una integración se utiliza el prefijo `fix/`, por ejemplo
`fix/add-missing-style-extension`.

## Cómo ejecutar el proyecto

1. Clonar el repositorio.
2. Abrir `PreubaZeroScam.xcodeproj` en Xcode.
3. Seleccionar el simulador **iPhone 17 Pro Max**.
4. Ejecutar con `⌘R` y verificar que la aplicación compile y se abra sin cerrarse de forma inesperada.

## Acuerdos de colaboración

- No realizar cambios directamente en `main`.
- Desarrollar cada funcionalidad en una rama independiente.
- Utilizar mensajes de commit claros que describan la acción realizada.
- Revisar el código antes de integrarlo: cada pull request lo revisa una persona distinta de quien lo desarrolló.
- Registrar comentarios sustantivos en las revisiones, no solo aprobaciones.
- Atender la retroalimentación recibida y justificar por escrito cuando no se aplique una recomendación.
- Mantener una comunicación respetuosa y centrada en el código.
- No incluir contraseñas, llaves, tokens ni certificados en el repositorio. El archivo `.gitignore`
  de Swift/Xcode está en la raíz desde el primer commit y excluye archivos generados por Xcode,
  configuraciones locales y datos propios de cada computadora.

## Licencia

Este proyecto se distribuye bajo los términos del archivo [LICENSE](LICENSE).
