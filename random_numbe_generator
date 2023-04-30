import random
import yaml

# Carrega o arquivo YAML
with open('config.yaml') as file:
    config = yaml.load(file, Loader=yaml.FullLoader)

# Extraindo os parametros de configuração
num_random_numbers = config['num_random_numbers']
min_range = config['random_number_range']['min']
max_range = config['random_number_range']['max']
output_file = config['output_file']

# Gerando números aleatórios
random_numbers = [random.randint(min_range, max_range) for i in range(num_random_numbers)]

# Escrevendo os números gerados no arquivo de saída
with open(output_file, 'w') as file:
    for number in random_numbers:
        file.write(str(number) + '\n')
