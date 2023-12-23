import Authentication from 0x05

pub fun main(account: Address): Authentication.Workers {
    return Authentication.peoples[account]!
}
