ActiveAdmin.register Ad do

  menu :priority => 1 , :parent => "Listings"

  index do

    column :id
    column :title
    column :price
    column "image" do |ad|
      image_tag(ad.image.url,:width => 75)
    end
    column "Decription" do |ad|
      truncate(ad.description, :length=> 50)
    end
    column "Ad Category" do |ad|
      ad.ad_category.nil? ? "" : ad.ad_category.name
    end
    column "Address" do |ad|
      ad.address.nil? ? "" : ad.address.address_brief
    end
    column "Company" do |ad|
      ad.company.nil? ? "" : ad.company.name
    end
    column "Shopping Mall" do |ad|
      ad.shopping_mall.nil? ? "" : ad.shopping_mall.name
    end
    column "User" do |ad|
     ad.user.nil? ? "" : ad.user.name
    end
    column "Ad Position" do |ad|
      ad.ad_position.nil? ? "" : ad.ad_position.name
    end

    column :expiry_date
    column :isapproved
    column :ispublished
    default_actions

  end

  show do |ad|
    attributes_table do
      row :title
      row :price
      row :image do
        image_tag(ad.image.url)
      end
      row :description
      row :ad_category_id
      row :address_id
      row :company_id
      row :shopping_mall_id
      row :user_id
      row :ad_position_id

      row :expiry_date
      row :isapproved
      row :ispublished

      row "summary look" do
        render "ads/ad_content",{:ad=>ad , :display_mode => "summary"}
      end

      row "detailed look" do
        render "ads/ad_content",{:ad=>ad , :display_mode => "detailed"}
      end

    end
    active_admin_comments
  end

end
