# 1. Evolución de los modelos

## De un modelo de lenguaje a un modelo grande

Un modelo de lenguaje es un programa que aprende, a partir de grandes cantidades de texto, qué palabra o fragmento es probable que siga a otro, y con eso puede completar o generar texto. Los primeros modelos contaban frecuencias de palabras vecinas; después llegaron las redes neuronales, que representan el significado de las palabras como números y aprenden relaciones más largas dentro de una frase.

El cambio grande fue la arquitectura Transformer, que procesa todo el texto a la vez con un mecanismo de atención y se puede entrenar en paralelo (Vaswani et al., 2017). Con esa arquitectura se comprobó que, al aumentar los parámetros, los datos y el cómputo del entrenamiento, el modelo mejoraba y aprendía a realizar tareas nuevas con solo unos ejemplos en la instrucción (Brown et al., 2020). A los modelos de ese tamaño se les llama modelos de lenguaje grandes (LLM).

## Modelos con razonamiento explícito

Algunos modelos escriben un razonamiento paso a paso antes de dar su respuesta final. Pedirle al modelo que explique sus pasos mejora los resultados en problemas de lógica y matemáticas (Wei et al., 2022). Esta capacidad no aparece solo por hacer más grande el modelo. Viene de dos cosas:

1. **Técnicas de entrenamiento.** Se entrena al modelo con aprendizaje por refuerzo para que recompense los razonamientos que llegan a respuestas correctas y verificables (DeepSeek-AI, 2025).
2. **Cómputo adicional al responder.** El modelo dedica más tiempo y más texto a pensar antes de contestar, y en algunos problemas eso rinde más que aumentar su tamaño (Snell et al., 2024).

## Referencias

Brown, T. B., Mann, B., Ryder, N., Subbiah, M., Kaplan, J., Dhariwal, P., et al. (2020). Language models are few-shot learners. *Advances in Neural Information Processing Systems, 33*, 1877–1901.

DeepSeek-AI. (2025). *DeepSeek-R1: Incentivizing reasoning capability in LLMs via reinforcement learning*. arXiv. https://arxiv.org/abs/2501.12948

Snell, C., Lee, J., Xu, K., y Kumar, A. (2024). *Scaling LLM test-time compute optimally can be more effective than scaling model parameters*. arXiv. https://arxiv.org/abs/2408.03314

Vaswani, A., Shazeer, N., Parmar, N., Uszkoreit, J., Jones, L., Gomez, A. N., Kaiser, L., y Polosukhin, I. (2017). Attention is all you need. *Advances in Neural Information Processing Systems, 30*.

Wei, J., Wang, X., Schuurmans, D., Bosma, M., Ichter, B., Xia, F., et al. (2022). Chain-of-thought prompting elicits reasoning in large language models. *Advances in Neural Information Processing Systems, 35*, 24824–24837.
