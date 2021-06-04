Feature: karate test suite 27
  using ssl certificate

# enable X509 certificate authentication with PKCS12 file 'certstore.pfx' and password 'certpassword'
* configure ssl = { keyStore: 'classpath:certstore.pfx', keyStorePassword: 'certpassword', keyStoreType: 'pkcs12' }

# trust all server certificates, in the feature file
* configure ssl = { trustAll: true }

# trust all server certificates, global configuration in 'karate-config.js'
karate.configure('ssl', { trustAll: true });


