# Despliegue y Monitoreo Continuo para una Plataforma de Navegación Portuaria – Evaluación Módulo 7

**Autor:** Victor Figueroa  
**Curso:** Módulo 7 - Despliegue y Monitoreo Continuo  
**Repositorio:** [https://github.com/Victfigueroa/porttrack-platform](https://github.com/Victfigueroa/porttrack-platform)

---

## Descripción del Repositorio
Este repositorio forma parte de la **evaluación final del Módulo 7 del curso Fundamentos DevOps**, enfocada en la implementación de un pipeline de despliegue y monitoreo continuo para **PortTrack**, una plataforma de navegación portuaria orientada a la gestión de embarcaciones, carga, rutas y seguridad marítima.  
El contenido refleja una simulación práctica que incluye CI/CD, monitoreo y despliegue automatizado con enfoque en la realidad del ecosistema portuario chileno.

---

## Propuesta de Mejora Realizada  
Se diseñó una arquitectura de despliegue y monitoreo continuo que incorpora mejoras técnicas clave sobre el esquema inicial, incluyendo:  
- Uso de **Rolling Deployment** para minimizar downtime y asegurar la continuidad operativa en microservicios críticos como "Barcos" y "Rutas".  
- Integración híbrida de herramientas CI/CD con **Jenkins on-premise** y **GitHub Actions en cloud**, optimizando pipelines reutilizables y velocidad de prototipos.  
- Implementación de un sistema de **rollback automatizado** mediante versionado de repositorios y Helm para asegurar recuperabilidad rápida.  
- Definición clara y segmentada de entornos (DEV, TEST, STAGING, PRD) con seguridad reforzada mediante gestión de credenciales (Vault/AWS Secrets Manager) y validaciones en pipeline.  
- Centralización del monitoreo con **Prometheus + Grafana para métricas** y **ELK Stack para logs estructurados**, complementado con alertas configuradas por microservicio integradas con Slack vía ChatOps.  
- Automatización avanzada y colaboración en tiempo real a través de la integración de **Slack y Hubot**, permitiendo gestión de incidentes y despliegues controlados desde canales de comunicación.  

Estas mejoras aportan mayor estabilidad, visibilidad operativa y escalabilidad a la plataforma portuaria, alineándose con las mejores prácticas DevOps y el contexto del ecosistema marítimo chileno.


---

## Tecnologías y Herramientas Integradas
- **CI/CD:** GitHub Actions + Jenkins (integración híbrida para orquestación).  
- **Contenedores:** Docker para empaquetado y portabilidad de microservicios.  
- **Monitoreo:** Prometheus + Grafana para métricas; ELK Stack (Elasticsearch, Logstash, Kibana) para logs.  
- **ChatOps:** Slack + Hubot para automatizar alertas y flujos colaborativos en tiempo real.  
- **Seguridad:** AWS Secrets Manager y cifrado de variables sensibles en pipelines.  
- **Despliegue frontend:** GitHub Pages para prototipo visual.

Estas herramientas se integran directamente con la propuesta de infraestructura portuaria basada en **Kubernetes (EKS)** y microservicios Dockerizados.

---

## Descripción del Pipeline
El pipeline CI/CD definido contiene:
1. **Stage de Backend CI:**  
   - Instalación de dependencias Python.  
   - Ejecución de pruebas unitarias automatizadas (Pytest).  
   - Construcción de imágenes Docker listas para despliegue.
2. **Stage de Frontend Deploy:**  
   - Publicación automática en GitHub Pages.  
   - Validación del estado post-deploy y notificación a Slack.
3. **Monitoreo Integrado:**  
   - Alertas Prometheus vinculadas a métricas clave.  
   - Centralización de logs en ELK con dashboards en Kibana.
4. **Automatización ChatOps:**  
   - Comandos como `@hubot despliegue staging rutas-api`.  
   - Confirmaciones y alertas de despliegue en tiempo real.

---

## Impacto en DevOps y Metodologías Ágiles
Este pipeline mejora el flujo de trabajo DevOps al:
- Reducir el tiempo de despliegue con **rolling updates automatizados**.
- Permitir detección temprana de fallos gracias a **observabilidad integrada**.
- Integrar la comunicación directa con el equipo mediante ChatOps, alineado con **Scrum** y feedback continuo.  
- Escalar hacia una cultura de **automatización y mejora continua**, clave en entornos portuarios dinámicos y críticos.

---

## 🌐 Deploy en GitHub Pages
El prototipo HTML de la plataforma está disponible en:  
[**https://victfigueroa.github.io/porttrack-platform/**](https://victfigueroa.github.io/porttrack-platform/)  

Este despliegue sirve como una **emulación visual del front-end de PortTrack**, demostrando la integración final del pipeline CI/CD, así como la efectividad del flujo de trabajo automatizado.

---

## Reflexiones y Aprendizajes
- **Automatización como pilar clave:** Minimiza errores humanos y asegura consistencia.  
- **Monitoreo proactivo:** Mejora tiempos de respuesta ante incidentes y optimiza recursos.  
- **ChatOps integrado:** Acelera decisiones y gestiona incidentes colaborativamente.  
- **Escalabilidad modular:** La arquitectura propuesta soporta la expansión hacia nuevos puertos nacionales e internacionales.  
- **Gestión del cambio:** Importancia de capacitar equipos técnicos y operativos para adoptar cultura DevOps.  

---

© 2025 – Victor Figueroa
