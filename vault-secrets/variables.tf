variable "token" {}


variable "secrets" {
  default = {
    roboshop-dev = {
      description = "RobeShop App Component All secrets"
    }
    roboshop-infra = {
      description = "Roboshop Infra related secrets"
    }
  }
}

variable "values" {
  default = {
    cart = {
      secret = "roboshop-dev"
      value = {
        REDIS_HOST     = "redis-dev.apps11.shop"
        CATALOGUE_HOST = "catalogue-dev.apps11.shop"
        CATALOGUE_PORT = 8080
      }
    }

    catalogue = {
      secret = "roboshop-dev"
      value = {
        MONGO     = "true"
        MONGO_URL = "mongodb://mongodb-dev.apps11.shop:27017/catalogue"
      }
    }

    user = {
      secret = "roboshop-dev"
      value = {
        MONGO     = "true"
        REDIS_URL = "redis://redis-dev.apps11.shop:6379"
        MONGO_URL = "mongodb://mongodb-dev.apps11.shop:27017/users"
      }
    }

    shipping = {
      secret = "roboshop-dev"
      value = {
        CART_ENDPOINT = "cart-dev.apps11.shop:8080"
        DB_HOST       = "mysql-dev.apps11.shop"
        username      = "root"
        password      = "RoboShop@1"
      }
    }

    payment = {
      secret = "roboshop-dev"
      value = {
        CART_HOST = "cart-dev.apps11.shop"
        CART_PORT = "8080"
        USER_HOST = "user-dev.apps11.shop"
        USER_PORT = "8080"
        AMQP_HOST = "rabbitmq-dev.apps11.shop"
        AMQP_USER = "roboshop"
        AMQP_PASS = "roboshop123"
      }
    }

    frontend = {
      secret = "roboshop-dev"
      value = {
        catalogue_url = "http://catalogue-dev.apps11.shop:8080/"
        user_url      = "http://user-dev.apps11.shop:8080/"
        cart_url      = "http://cart-dev.apps11.shop:8080/"
        payment_url   = "http://payment-dev.apps11.shop:8080/"
        shipping_url  = "http://shipping-dev.apps11.shop:8080/"
      }
    }

    rabbitmq = {
      secret = "roboshop-dev"
      value = {
        username = "roboshop"
        password = "roboshop123"
      }
    }

    mysql = {
      secret = "roboshop-dev"
      value = {
        username = "root"
        password = "RoboShop@1"
      }
    }

    ssh = {
      secret = "roboshop-infra"
      value = {
        username = "azuser"
        password = "Devops@12345"
      }
    }
  }
}
