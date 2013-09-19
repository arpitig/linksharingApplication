import org.ig.*

class BootStrap {

    def init = { servletContext ->



        new User(email:'tushar.saxena@intelligrape.com',gender: 'Male',firstName: 'Tushar',lastName: 'Saxena',dateOfBirth: new Date(),password: '12345').save()
        new User(email:'deepak.krmittal@intelligrape.com',gender: 'Male',firstName: 'Deepak',lastName: 'Mittal',dateOfBirth: new Date(),password: '12345').save()
        new User(email:'arshad.khan@intelligrape.com',gender: 'Male',firstName: 'Arshad',lastName: 'Khan',dateOfBirth: new Date(),password: '12345').save()

        new User(email:'arpit.singhal@intelligrape.com',gender: 'Male',firstName: 'Arpit',lastName: 'Singhal',dateOfBirth: new Date(),password: '12345').save()
        new User(email:'admin@gmail.com',gender: 'Male',firstName: 'Arpit',lastName: 'Singhal',dateOfBirth: new Date(),password: '12345').save()

        10.times {
            new User(email:"arpitsinghalmca${it}@gmail.com",gender: 'Male',firstName: "Arpit${it}",lastName: "Singhal${it}",dob: new Date(),password: '12345').save()
        }


        int value=1

        10.times {


            User user = User.get(value)

            Topic topic= new  Topic(name: "Topic${value}",owner : user,visibility: 'Public',content:"content${value}")

            topic.save()


            value++
        }
        value = 1

        9.times {
            new Subscription(subscriber:User.get(value) ,seriousness: 'casual',topic: Topic.get(value)).save()
            value++

        }


        new Subscription(subscriber:User.get(1) ,seriousness: 'casual',topic: Topic.get(2)).save()
        value=1
        10.times {
            new DocumentResource(title: "resouceTitle${value}",summary: "resourceSummary${value}" , owner: User.get(value),topic: Topic.get(value),fileName: "file${value}",contentType: "pdf").save()
            value++
        }
        value = 1

        10.times {
            new ReadingItem(isFavourite: true,isRead: true,users :User.get(value),resource: Resource.get(value) ).save()
            value++
        }




    }
    def destroy = {
    }
}
