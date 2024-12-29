# HomeLab

## Connecting to Raspberry Pi using Public Key

1. **Generate an SSH key pair on your computer:**

    ```sh
    ssh-keygen -t rsa -b 2048
    ```

    Follow the instructions and save the key in a secure location (e.g., `~/.ssh/id_rsa`).

2. **Copy the public key to the Raspberry Pi:**

    ```sh
    ssh-copy-id user@raspberry_pi_ip_address
    ```

    Replace `pi` with your Raspberry Pi's username and `raspberry_pi_ip_address` with your Raspberry Pi's IP address.

3. **Connect to the Raspberry Pi using the public key:**

    ```sh
    ssh pi@raspberry_pi_ip_address
    ```

    You should now be able to connect to your Raspberry Pi without entering a password.

## Copy and customize `inventory.ini` file

    
```sh
cp inventory.ini.example inventory.ini
```

## Copy and customize playbook variable file `vars.yml`

```sh
cd playbooks/vars
cp vars.yml.example vars.yml
```

## Run the Ansible playbooks

```sh
make <playbook-name>
```

Run `make` command to see the list of available playbooks. 