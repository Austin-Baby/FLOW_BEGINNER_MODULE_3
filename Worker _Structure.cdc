pub contract Authentication {

    pub var peoples: {Address: Workers}
    // Define a struct
    pub struct Workers {
      pub let workerid:String  
      pub let name:String
       pub let age:UInt
      pub let account:Address

    // You have to pass in 5 arguments when creating this Struct.
        init(_workerid:String,_name:String, _age:UInt,_account:Address) {
            self.workerid=_workerid
            self.name=_name
            self.age=_age
            self.account=_account
        }
    }

    pub fun addWorkers( workerid:String,name:String ,age:UInt,account:Address){
        let newworkers =worker(_workerid:workerid, _name:name,_age:age,_account:account)
        self.peoples[account]=newWorkers
    }

  // The init() function is required if the contract contains any fields.
  init() {
    self.peoples= {}
  }
}
