# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'cicero'
require 'benchmark'
require 'benchmark-ips'

# User
# @implemented
User.destroy_all
User.create(
  [
    {
      email: 'contato@portalfronteirico.com',
      password: 'test123',
      password_confirmation: 'test123',
      admin: true
    },
    {
      email: 'fgtas-sine@portalfronteirico.com',
      password: 'test123',
      password_confirmation: 'test123',
      admin: false
    },
    {
      email: 'hig-sb@portalfronteirico.com',
      password: 'test123',
      password_confirmation: 'test123',
      admin: false
    }
  ]
)

admin = User.where(admin: true).first

# State
# @implemented
State.destroy_all
State.create(
  [
    {
      name: 'Rio Grande do Sul',
      acronym: 'RS',
      user: admin
    }
  ]
)

rio_grande_do_sul = State.where(acronym: 'RS').first

# City
# @implemented
City.destroy_all
City.create(
  [
    {
      name: 'São Borja',
      capital: false,
      state: rio_grande_do_sul,
      user: admin
    },
    {
      name: 'Itaqui',
      capital: false,
      state: rio_grande_do_sul,
      user: admin
    },
    {
      name: 'Garruchos',
      capital: false,
      state: rio_grande_do_sul,
      user: admin
    },
    {
      name: 'Maçambara',
      capital: false,
      state: rio_grande_do_sul,
      user: admin
    },
    {
      name: 'São Luiz Gonzaga',
      capital: false,
      state: rio_grande_do_sul,
      user: admin
    },
    {
      name: 'Santo Ântonio das Missões',
      capital: false,
      state: rio_grande_do_sul,
      user: admin
    },
    {
      name: 'Santa Maria',
      capital: false,
      state: rio_grande_do_sul,
      user: admin
    },
    {
      name: 'Santo Ângelo',
      capital: false,
      state: rio_grande_do_sul,
      user: admin
    },
    {
      name: 'Itacurubi',
      capital: false,
      state: rio_grande_do_sul,
      user: admin
    },
    {
      name: 'Unistalda',
      capital: false,
      state: rio_grande_do_sul,
      user: admin
    },
    {
      name: 'Uruguaiana',
      capital: false,
      state: rio_grande_do_sul,
      user: admin
    }
  ]
)

# HiringType
# @implemented
HiringType.destroy_all
HiringType.create(
  [
    {
      name: 'A combinar',
      user: admin
    },
    {
      name: 'CLT Full',
      user: admin
    },
    {
      name: 'PJ',
      user: admin
    },
    {
      name: 'Freelancer',
      user: admin
    },
    {
      name: 'Treinee',
      user: admin
    },
    {
      name: 'CLT Flex',
      user: admin
    },
    {
      name: 'Estágio',
      user: admin
    }
  ]
)

# OccupationArea
# @implemnented
# TODO: a ser mudado para ocupação comum na região
OccupationArea.destroy_all
OccupationArea.create(
  [
    {
      name: 'Banco de Dados',
      user: admin
    },
    {
      name: 'Design/UX',
      user: admin
    },
    {
      name: 'Gestão de TI',
      user: admin
    },
    {
      name: 'Inovação e Gestão',
      user: admin
    },
    {
      name: 'Marketing Digital',
      user: admin
    },
    {
      name: 'Programação/Arquitetura',
      user: admin
    },
    {
      name: 'Redes/Infraestrutura',
      user: admin
    },
    {
      name: 'Requisitos',
      user: admin
    },
    {
      name: 'Segurança',
      user: admin
    },
    {
      name: 'Testes',
      user: admin
    },
    {
      name: 'Treinamentos/Instrutoria',
      user: admin
    }
  ]
)

# Job
# @implemented
Job.destroy_all

(1..350).each do |i|
  Job.create(
    [
      {
        title: "Vaga #{i}",
        hiring_type_id: HiringType.all.sample.id,
        occupation_area_id: OccupationArea.all.sample.id,
        salary: rand(1_045..10_000).to_f,
        modality: %w[Presencial Remoto].sample,
        location: 'Centro, São Borja',
        how_to_apply: %w[E-mail URL].sample,
        application_path: 'https://portalfronteirico.com',
        description: Cicero.paragraphs(3),
        requirements: Cicero.paragraphs(2),
        desirable: Cicero.paragraphs(1),
        others: "",
        state_id: rio_grande_do_sul.id,
        city_id: rio_grande_do_sul.cities.where(name: 'São Borja').first.id,
        expirated: false,
        keywords: 'keyword',
        user: admin
      }
    ]
  )
end
