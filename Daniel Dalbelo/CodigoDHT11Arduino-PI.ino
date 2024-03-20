// Biblioteca necessária para a saída dos dados do sensor de umidade e temperatura

#include "DHT.h"

// Nomeado os comandos para que seja mais didático

#define dht_type DHT11
#define dht_pin Pino_do_DHT11

// Declarando as variáveis para o pino do sensor e os dados para o gráfico

int Pino_do_DHT11 = A0;

float temperatura = 0;
float umidade = 0;

// Definindo o pino do DHT11 em sua biblioteca

DHT dht_1 = DHT(Pino_do_DHT11, DHT11);

// Comando que será executado apenas uma vez, quando o programa for iniciado

void setup() {
  Serial.begin(9600);
  dht_1.begin();
  Serial.println();
}

// Comando que ficará em "loop", executando até que o programa seja encerrado.

void loop() {
  
  // Variáveis com números em até 7 casas decimais
  
  umidade = dht_1.readHumidity();
  temperatura = dht_1.readTemperature();

  // Se caso o valor da temperatura não for um número OU 
  // o valor da umidade não for um número, avise que há um erro

  if(isnan(temperatura) or isnan(umidade)){
    Serial.println("Erro ao ler"); 

  // Em outro caso, imprima a umidade e a temperatura.

  } else {
    Serial.print(umidade);
    Serial.print(" ");
    Serial.println(temperatura);
  }

// Atraso de 2 segundos para rodar o código em "loop" novamente, mantendo a precisão.

  delay(2000);
}