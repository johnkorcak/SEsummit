view: Workshop_JMK {
    label: "Workshop_JMK"
    sql_table_name: "Workshop_JMK"."Workshop_JMK";;
    dimension: Color {
        label: "Color"
        type: string
        sql: ${TABLE}.`Color`;;
    }

    dimension: Size {
        label: "Size"
        type: string
        sql: ${TABLE}.`Size`;;
    }

    dimension: Style {
        label: "Style"
        type: string
        sql: ${TABLE}.`Style`;;
    }

    dimension: d_gender {
        label: "Gender"
        group_label: "Customer Attributes"
        type: string
        sql: ${TABLE}.`d_gender`;;
    }

    dimension: d_occupation {
        label: "Occupation"
        group_label: "Customer Attributes"
        type: string
        sql: ${TABLE}.`d_occupation`;;
    }

    dimension: Customer_Dimension_City {
        label: "   City"
        group_label: "Customer Dimension"
        type: string
        sql: ${TABLE}.`City`;;
        drill_fields: [Customer_Dimension_Postal_Code]
    }

    dimension: Customer_Dimension_Country {
        label: "     Country"
        group_label: "Customer Dimension"
        type: string
        sql: ${TABLE}.`Country`;;
        drill_fields: [Customer_Dimension_State_Province]
    }

    dimension: Customer_Dimension {
        label: " Customer"
        group_label: "Customer Dimension"
        type: string
        sql: ${TABLE}.`Customer Dimension`;;
    }

    dimension: Customer_Dimension_Postal_Code {
        label: "  Postal Code"
        group_label: "Customer Dimension"
        type: string
        sql: ${TABLE}.`Postal Code`;;
        drill_fields: [Customer_Dimension]
    }

    dimension: Customer_Dimension_State_Province {
        label: "    State/Province"
        group_label: "Customer Dimension"
        type: string
        sql: ${TABLE}.`State/Province`;;
        drill_fields: [Customer_Dimension_City]
    }

    dimension: Date_Dimension_Order_Date_Dimension {
        label: " Order Date"
        group_label: "Order Date Dimension"
        type: date
        sql: ${TABLE}.`Order Date Dimension`;;
    }

    dimension: Date_Dimension_Order_Month1 {
        label: "  Order Month"
        group_label: "Order Date Dimension"
        type: date_month
        sql: ${TABLE}.`Order Month1`;;
        drill_fields: [Date_Dimension_Order_Date_Dimension]
    }

    dimension: Date_Dimension_Order_Quarter {
        label: "   Order Quarter"
        group_label: "Order Date Dimension"
        type: date_quarter
        sql: ${TABLE}.`Order Quarter`;;
        drill_fields: [Date_Dimension_Order_Month1]
    }

    dimension: Date_Dimension_Order_Year1 {
        label: "    Order Year"
        group_label: "Order Date Dimension"
        type: date_year
        sql: ${TABLE}.`Order Year1`;;
        drill_fields: [Date_Dimension_Order_Quarter]
    }

    dimension: Date_YWD_Order_Date_YWD {
        label: " Order Date"
        group_label: "Order Date YWD"
        type: date
        sql: ${TABLE}.`Order Date YWD`;;
    }

    dimension: Date_YWD_Order_Week {
        label: "  Order Week"
        group_label: "Order Date YWD"
        type: date_week
        sql: ${TABLE}.`Order Week`;;
        drill_fields: [Date_YWD_Order_Date_YWD]
    }

    dimension: Date_YWD_Order_Year1a {
        label: "   Order Year"
        group_label: "Order Date YWD"
        type: date_year
        sql: ${TABLE}.`Order Year1a`;;
        drill_fields: [Date_YWD_Order_Week]
    }

    dimension: Product_Dimension_Product_Category {
        label: "   Product Category"
        group_label: "Product Dimension"
        type: string
        sql: ${TABLE}.`Product Category`;;
        drill_fields: [Product_Dimension_Product_Subcategory]
    }

    dimension: Product_Dimension {
        label: " Product"
        group_label: "Product Dimension"
        type: string
        sql: ${TABLE}.`Product Dimension`;;
    }

    dimension: Product_Dimension_Product_Subcategory {
        label: "  Product Subcategory"
        group_label: "Product Dimension"
        type: string
        sql: ${TABLE}.`Product Subcategory`;;
        drill_fields: [Product_Dimension]
    }

    dimension: Date_Dimension_Ship_Date_Dimension {
        label: " Ship Date"
        group_label: "Ship Date Dimension"
        type: date
        sql: ${TABLE}.`Ship Date Dimension`;;
    }

    dimension: Date_Dimension_Ship_Month1 {
        label: "  Ship Month"
        group_label: "Ship Date Dimension"
        type: date_month
        sql: ${TABLE}.`Ship Month1`;;
        drill_fields: [Date_Dimension_Ship_Date_Dimension]
    }

    dimension: Date_Dimension_Ship_Quarter {
        label: "   Ship Quarter"
        group_label: "Ship Date Dimension"
        type: date_quarter
        sql: ${TABLE}.`Ship Quarter`;;
        drill_fields: [Date_Dimension_Ship_Month1]
    }

    dimension: Date_Dimension_Ship_Year1 {
        label: "    Ship Year"
        group_label: "Ship Date Dimension"
        type: date_year
        sql: ${TABLE}.`Ship Year1`;;
        drill_fields: [Date_Dimension_Ship_Quarter]
    }

    dimension: Date_YWD_Ship_Date_YWD {
        label: " Ship Date"
        group_label: "Ship Date YWD"
        type: date
        sql: ${TABLE}.`Ship Date YWD`;;
    }

    dimension: Date_YWD_Ship_Week {
        label: "  Ship Week"
        group_label: "Ship Date YWD"
        type: date_week
        sql: ${TABLE}.`Ship Week`;;
        drill_fields: [Date_YWD_Ship_Date_YWD]
    }

    dimension: Date_YWD_Ship_Year1a {
        label: "   Ship Year"
        group_label: "Ship Date YWD"
        type: date_year
        sql: ${TABLE}.`Ship Year1a`;;
        drill_fields: [Date_YWD_Ship_Week]
    }

    dimension: Customer_test_Hierarchy_Customer_test_Level {
        label: "Customer test Level"
        group_label: "customer test"
        type: string
        sql: ${TABLE}.`Customer test Level`;;
    }

    dimension: d_datefirstpurchase {
        label: "Date First Purchase"
        group_label: "customer test"
        type: string
        sql: ${TABLE}.`d_datefirstpurchase`;;
    }


    measure: m_customerkey_distinct_est {
        label: "Customer Count Estimate"
        group_label: "Sales Metrics"
        type: count_distinct
        sql: ${TABLE}.`m_customerkey_distinct_est`;;
    }

    measure: m_orderquantity_sum {
        label: "Order Quantity"
        group_label: "Sales Metrics"
        type: sum
        sql: ${TABLE}.`m_orderquantity_sum`;;
    }

    measure: m_salesamount_sum {
        label: "Sales Amount"
        group_label: "Sales Metrics"
        type: sum
        sql: ${TABLE}.`m_salesamount_sum`;;
    }

    measure: m_Sales_Tax_sum {
        label: "Sales Tax"
        group_label: "Sales Metrics"
        type: sum
        sql: ${TABLE}.`m_Sales Tax_sum`;;
    }

}
