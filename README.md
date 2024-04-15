# HolaFood

HolaFood is a web application project about food ordering website designed to connect hungry customers with the best local restaurants in the area. HolaFood is built using JSP, Servlet, JSTL, Bootstrap, SASS, AJAX. This repository contains the source code and necessary files to run the HolaFood application.

## Screenshots

![Screenshot 1](screenshots/screenshot1.jpg)

![Screenshot 2](screenshots/screenshot2.jpg)

![Screenshot 3](screenshots/screenshot3.jpg)

![Screenshot 4](screenshots/screenshot4.jpg)

![Screenshot 5](screenshots/screenshot5.jpg)

## Features

- **User Authentication:** Users can register and log in to their accounts to order food from their favorite restaurants.
- **Product Catalog:** Customers can browse through the products offered by various restaurants and add them to their cart.
- **Shopping Cart:** Customers can add, remove, and update the products in their cart and place the order.
- **Order History:** Customers can view their order history and track the status of their orders.
- **Restaurant Management:** Restaurants can add, update, and delete their products from the catalog.
- **Search and Paging:** AJAX is used to implement search and paging features for efficient data retrieval.

## Installation

To run HolaFood locally, please ensure that you have the following prerequisites installed on your system:

- SQL Server (2019 or above)
- Netbeans (I'm using 13 Version and I tried with 17 version but it fails serveral times)
- JDK (1.8)
- Tomcat 8
Follow the steps below to set up the project:

1. **Clone the repository:**

    ```bash
    git clone https://github.com/DuyThaiddt/HolaFood
    ```

2. **Open Netbeans:**
Configure Sass compiler. I'm using choco to install sass and it works flawlessly.

3. **Configure the database directory in the Source Packages/dal/DBContext.java**


4. **Add sample database**
Go the database folder. Using SQL Server, run `1. Create database and table.sql` and `2. InsertData.sql`

5. **Configure Tomcat. Then build and deploy**

## Contributing

Contributions to HolaFood are always welcome. If you would like to contribute, please follow these steps:

1. **Fork the repository.**
2. **Create a new branch:**

    ```bash
    git checkout -b my-new-feature
    ```

3. **Make your changes and commit them:**

    ```bash
    git commit -m "Add some feature"
    ```

4. **Push to the branch:**

    ```bash
    git push origin my-new-feature
    ```

5. **Open a pull request and provide a detailed description of your changes.**

Please make sure to adhere to the code style and conventions used in the project.
## Acknowledgements

HolaFood makes use of the following open-source libraries and APIs:

- jakarta.mail-1.6.7.jar
- jakarta.servlet.jsp.jstl-2.0.0.jar
- jakarta.servlet.jsp.jstl-api-2.0.0.jar
- sqljdbc42.jar

Special thanks to the developers and contributors of these projects for their valuable work.


## License

The HolaFood is licensed under the [MIT License.](https://choosealicense.com/licenses/mit/)
## Contact

If you have any questions, suggestions, or feedback, please feel free to contact the project maintainer at:

[![email](https://img.shields.io/badge/Gmail-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:daoduythai.business@gmail.com)
[![portfolio](https://img.shields.io/badge/my_portfolio-000?style=for-the-badge&logo=ko-fi&logoColor=white)](http://codewithdt.com/)
[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/dduythai/)
[![YouTube](https://img.shields.io/badge/YouTube-%23FF0000.svg?style=for-the-badge&logo=YouTube&logoColor=white)](https://www.youtube.com/@codewithdt)
[![facebook](https://img.shields.io/badge/Facebook-1877F2?style=for-the-badge&logo=facebook&logoColor=white)](https://www.facebook.com/duythai.ddt/)
[![Instagram](https://img.shields.io/badge/Instagram-%23E4405F.svg?style=for-the-badge&logo=Instagram&logoColor=white)](https://www.instagram.com/dduy_thai/)
[![Threads](https://img.shields.io/badge/Threads-000000?style=for-the-badge&logo=Threads&logoColor=white)](https://www.threads.net/@dduy_thai)
[![twitter](https://img.shields.io/badge/twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white)](https://twitter.com/codewithdt)
 
