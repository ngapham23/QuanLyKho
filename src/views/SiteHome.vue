
<template>
    <div>
        <Header></Header> 
        <Navbar> </Navbar> 
        <WarehouseTable></WarehouseTable>
      <!-- chỗ này test git -->
    </div>
</template>

<script>
import Header from '../components/Header.vue';  
import Navbar from '../components/Navbar.vue'; 
import WarehouseTable from '../components/WarehouseTable.vue';


export default {
    components: {
        Header,  
        Navbar,  
        WarehouseTable,
       
    }
}
</script>

