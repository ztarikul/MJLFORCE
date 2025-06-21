@extends('components.master')
@section('title', 'Dashboard')
@section('content')
    <style>
        .customize-field {
            background: cadetblue;
            color: rgb(32, 29, 29)
        }
    </style>
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header pb-0">
                        <h5>Ship-To-Party form</h5>
  
                    </div>
                    <div class="card-body">
                        <form class="theme-form mega-form" id="shipToPartyMisToSAPForm">
                            @csrf
                            <input type="hidden" name="ship_to_party_id" id="ship_to_party_id" value="{{ $shipToParty->id }}">
                            <h6>Account Information</h6>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Sold To Party Name</label>
                                        
                                        <input type="text"  class="form-control" name="sold_to_party_name" id="sold_to_party_name" value="{{ $shipToParty->soldToParty->acc_name }}" disabled>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Customer Account Group</label>
                                        <input type="text"  class="form-control" name="customer_type" id="customer_type" value="{{ $shipToParty->customer_acc_group }}" disabled>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Company Code</label>
                                        <input type="number" class="form-control" name="company_code"
                                            value="{{ $shipToParty->company_code }}" placeholder="Company Code" disabled>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Sales Org</label>
                                        <input type="number" class="form-control" name="sales_org"
                                            value="{{ $shipToParty->sales_org }}" placeholder="Sales Org" disabled>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Distribution Channel</label>
                                        <input type="text" class="form-control" id="distribution_ch"
                                            name="distribution_ch"
                                            value="{{ $shipToParty->soldToParty->distributionCh->sap_code }} - {{ $shipToParty->soldToParty->distributionCh->name }}"
                                            disabled>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Sales Division</label>
                                        <input type="text" class="form-control" name="sales_division"
                                            value="{{ $shipToParty->sales_division }}" placeholder="Sales Division" disabled>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Account Name</label>
                                        <input type="text" class="form-control" name="acc_name"
                                            value="{{ $shipToParty->acc_name }}" placeholder="Account Name">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Account Name 2</label>
                                        <input type="text" class="form-control" name="acc_name2"
                                            value="{{ $shipToParty->acc_name2 }}">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Search Term</label>
                                        <input type="text" class="form-control customize-field" name="search_term"
                                            value="{{ $shipToParty->search_term }}">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Search Term 2</label>
                                        <input type="text" class="form-control customize-field" name="search_term2"
                                            value="{{ $shipToParty->search_term2 }}">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Legacy Account Code</label>
                                        <input type="text" class="form-control customize-field" name="legacy_acc_code"
                                            value="{{ $shipToParty->legacy_acc_code }}" disabled>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Country</label>
                                        <input type="text" class="form-control" name="country"
                                            value="{{ $shipToParty->country }}" placeholder="Country">
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Region</label>
                                        <input type="text" class="form-control customize-field" name="region"
                                            id="region" value="{{ $shipToParty->region }}" placeholder="Region" disabled>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">District</label>
                                        <input type="text" class="form-control" name="district"
                                            value="{{ $shipToParty->district }}" placeholder="District">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Address</label>
                                        <input type="text" class="form-control" name="address"
                                            value="{{ $shipToParty->address }}" placeholder="Address">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">CEO</label>
                                        <input type="text" class="form-control" name="ceo"
                                            value="{{ $shipToParty->ceo }}" placeholder="CEO" disabled>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Address 2</label>
                                        <input type="text" class="form-control" name="address_2"
                                            value="{{ $shipToParty->address_2 }}" placeholder="Address 2">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Address 3</label>
                                        <input type="text" class="form-control" name="address_3"
                                            value="{{ $shipToParty->address_3 }}" placeholder="Address 3">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Language</label>
                                        <input type="text" class="form-control" name="lang"
                                            value="{{ $shipToParty->lang }}" placeholder="Language" disabled>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Phone</label>
                                        <input type="text" class="form-control" name="phone"
                                            value="{{ $shipToParty->phone }}" placeholder="Phone" disabled>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Mobile Phone</label>
                                        <input type="text" class="form-control" name="mobile_phone"
                                            value="{{ $shipToParty->mobile_phone }}" placeholder="Mobile Phone" disabled>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Fax</label>
                                        <input type="text" class="form-control customize-field" name="fax"
                                            value="{{ $shipToParty->fax }}" placeholder="Fax" disabled>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Email</label>
                                        <input type="email" class="form-control" name="email"
                                            value="{{ $shipToParty->email }}" placeholder="Email" disabled>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Other URL</label>
                                        <input type="url" class="form-control customize-field" name="other_url"
                                            value="{{ $shipToParty->other_url }}" placeholder="Other URL" disabled>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Postal Code</label>
                                        <input type="text" class="form-control" name="postal_code"
                                            value="{{ $shipToParty->postal_code }}" placeholder="Postal Code">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Contact Person Name</label>
                                        <input type="text" class="form-control" name="contact_person_name"
                                            value="{{ $shipToParty->contact_person_name }}"
                                            placeholder="Contact Person Name">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Contact Person Tel</label>
                                        <input type="text" class="form-control" name="contact_person_tel"
                                            value="{{ $shipToParty->contact_person_tel }}"
                                            placeholder="Contact Person Tel">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Contact Person Mobile</label>
                                        <input type="text" class="form-control" name="contact_person_mobile"
                                            value="{{ $shipToParty->contact_person_mobile }}"
                                            placeholder="Contact Person Mobile">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Group</label>
                                        <input type="text" class="form-control" name="group"
                                            value="{{ $shipToParty->group }}" placeholder="Group" disabled>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Payment Mode</label>
                                        <input type="text" class="form-control customize-field" name="payment_mode"
                                            value="{{ $shipToParty->payment_mode }}" placeholder="Payment Mode" disabled>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">BIN No</label>
                                        <input type="text" class="form-control" name="bin_no"
                                            value="{{ $shipToParty->bin_no }}" placeholder="BIN No">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">VAT Reg Num</label>
                                        <input type="text" class="form-control customize-field" name="vat_reg_num"
                                            value="{{ $shipToParty->vat_reg_num }}" placeholder="VAT Reg Num" disabled>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Recon Account</label>
                                        <input type="text" class="form-control" name="recon_acc"
                                            value="{{ $shipToParty->recon_acc }}" placeholder="Recon Account" disabled>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">FI Payment Terms</label>
                                        <input type="text" class="form-control" name="fi_payment_terms"
                                            value="{{ $shipToParty->fi_payment_terms }}" disabled>
                                       
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Currency</label>
                                        <input type="text" class="form-control" id="currency" name="currency"
                                            value="{{ $shipToParty->currency }}" disabled>
                                       
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Customer Pricing Procedure</label>
                                        <input type="number" class="form-control" name="cust_pricing_procedure"
                                            value="{{ $shipToParty->cust_pricing_procedure }}"
                                            placeholder="Pricing Procedure" disabled>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Shipping Condition</label>
                                        <input type="number" class="form-control" name="shipping_condition"
                                            value="{{ $shipToParty->shipping_condition }}"
                                            placeholder="Shipping Condition" disabled>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Delivering Plant</label>
                                        <input type="text" class="form-control customize-field"
                                            name="delivering_plant" value="{{ $shipToParty->delivering_plant }}"
                                            placeholder="Delivering Plant" disabled>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Other Combination</label>
                                        <input type="text" class="form-control" name="other_combination"
                                            value="{{ $shipToParty->other_combination }}"
                                            placeholder="Other Combination" disabled>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Incoterms</label>
                                        <input type="text" class="form-control" name="incoterms"
                                            value="{{ $shipToParty->incoterms }}" placeholder="Incoterms" disabled>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Incoterms Loc 1</label>
                                        <input type="text" class="form-control" name="incoterms_loc_1"
                                            value="{{ $shipToParty->incoterms_loc_1 }}" placeholder="Incoterms Loc 1" disabled>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">SD Payment Terms</label>
                                        <input type="text" class="form-control" name="sd_payment_terms" id="sd_payment_terms"
                                            value="{{ $shipToParty->sd_payment_terms }}" disabled>
                                       
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Account Assignment Group</label>
                                        <input type="text" class="form-control" name="acc_assignment_group" id="acc_assignment_group"
                                            value="{{ $shipToParty->acc_assignment_group }}" disabled>
                                        
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Tax Classification</label>
                                        <input type="number" class="form-control" name="tax_classification"
                                            value="1" placeholder="Tax Classification" disabled>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Territory</label>
                                         <input type="number" class="form-control" name="territory"
                                            value="{{ $shipToParty->soldToParty->territorySToP->sap_code }} -
                                                {{ $shipToParty->soldToParty->territorySToP->name }}" disabled>
                                        
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Customer Group</label>
                                        <input type="text" class="form-control" id="customer_group"
                                            name="customer_group"
                                            value="{{ $shipToParty->soldToParty->CustomerGroup->sap_code }} - {{ $shipToParty->soldToParty->CustomerGroup->name }}"
                                            placeholder="Customer Group" disabled>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Trade Category</label>
                                        <input type="text" class="form-control" id="trade_category"
                                            name="trade_category"
                                            value="{{ $shipToParty->soldToParty->tradeCategory->sap_code }} - {{ $shipToParty->soldToParty->tradeCategory->name }}" disabled>

                                        
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Trade Sub Category</label>
                                         <input type="text" class="form-control" id="trade_sub_category"
                                            name="trade_sub_category"
                                            value="{{ $shipToParty->soldToParty->tradeSubCategory->sap_code }} - {{ $shipToParty->soldToParty->tradeSubCategory->name }}" disabled>
                                        
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Customer Group 3</label>
                                        <input type="text" class="form-control customize-field"
                                            name="customer_group_3" value="{{ $shipToParty->customer_group_3 }}"
                                            placeholder="Customer Group 3" disabled>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Customer Group 4</label>
                                        <input type="text" class="form-control customize-field"
                                            name="customer_group_4" value="{{ $shipToParty->customer_group_4 }}"
                                            placeholder="Customer Group 4" disabled>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Customer Group 5</label>
                                        <input type="text" class="form-control customize-field"
                                            name="customer_group_5" value="{{ $shipToParty->customer_group_5 }}"
                                            placeholder="Customer Group 5" disabled>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">BP Type</label>
                                        <input type="text" class="form-control" name="bp_type"
                                            value="{{ $shipToParty->bp_type }}" placeholder="BP Type" disabled>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Attr 2</label>
                                        <input type="text" class="form-control customize-field" name="attr_2"
                                            value="{{ $shipToParty->attr_2 }}" placeholder="Attr 2" disabled>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Attr 3</label>
                                        <input type="text" class="form-control customize-field" name="attr_3"
                                            value="{{ $shipToParty->attr_3 }}" placeholder="Attr 3" disabled>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Attr 4</label>
                                        <input type="text" class="form-control customize-field" name="attr_4"
                                            value="{{ $shipToParty->attr_4 }}" placeholder="Attr 4" disabled>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Factory Address 2</label>
                                        <input type="text" class="form-control customize-field"
                                            name="factory_address_2" value="{{ $shipToParty->factory_address_2 }}"
                                            placeholder="Factory Address 2" disabled>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Loc Division</label>
                                        <input type="text" class="form-control" name="loc_division_id"
                                            value="{{ $shipToParty->locDivision->name }}" placeholder="Division"
                                            disabled>

                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Loc District</label>
                                        <input type="text" class="form-control" name="loc_district_id"
                                            value="{{ $shipToParty->LocDistrict->name }}" placeholder="District Name"
                                            disabled>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Loc Upazila</label>
                                        <input type="text" class="form-control" name="loc_upazila_id"
                                            value="{{ $shipToParty->LocUpazila->name }}" placeholder="Upazila Name"
                                            disabled>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Loc Post Office</label>
                                        <input type="text" class="form-control" name="loc_post_office_id"
                                            value="{{ $shipToParty->LocPostOffice->name }}"
                                            placeholder="Post Office Name" disabled>

                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Sales Person</label>
                                        <input type="text" class="form-control" name="employee"
                                            value="{{ $shipToParty->employee->name }}" placeholder="Sales Person"
                                            disabled>

                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Remarks</label>
                                        <textarea class="form-control" name="remarks" value="{{ $shipToParty->remarks }}" placeholder="Remarks" disabled></textarea>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Discount Eligibility</label>
                                        <input type="text" class="form-control" name="is_eligible_discount"
                                            value="{{ $shipToParty->is_eligible_discount === 1 ? 'Eligible' : 'Not Eligible' }}"
                                            placeholder="Discount Eligibility" disabled>

                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Active Status</label>
                                        <input type="text" class="form-control" name="activeStatus"
                                            value="{{ $shipToParty->activeStatus === 1 ? 'Active' : 'Inactive' }}"
                                            placeholder="Active Status" disabled>

                                    </div>
                                </div>

                            </div>

                    </div>
                    <div class="card-footer text-center">
                        <button class="btn btn-primary" type="submit">
                            Submit
                        </button>
                        <input class="btn btn-light" type="reset" value="Cancel" />
                    </div>

                    </form>

                </div>

            </div>
        </div>

    </div>
    </div>

@endsection
<script src="{{ asset('assets/js/jquery-3.5.1.min.js') }}"></script>
<script>
    $(document).ready(function() {


        $('#shipToPartyMisToSAPForm').submit(function(e) {

            let formData = new FormData(this);
            let ship_to_party_id = $('#ship_to_party_id').val();

            e.preventDefault();
            $.confirm({
                title: 'Confirm!',
                content: 'By submitting, the CMA will send to the SAP. And you MIS not be able to edit any further!',
                btnClass: 'btn-blue',
                buttons: {
                    confirm: {
                        btnClass: 'btn-blue',
                        action: function() {
                            $.ajax({
                                type: "POST",
                                url: "{{ url('cma/shipToPartyMisToSAP') }}" +
                                    '/' + ship_to_party_id,
                                data: formData,
                                contentType: false,
                                processData: false,
                                cache: false,
                                beforeSend: function() {
                                    $('.loader_div').show();
                                },
                                complete: function() {
                                    $('.loader_div').hide();
                                },
                                success: function(res) {
                                    if (res.status === 'success') {
                                        $.toast({
                                            heading: 'Success',
                                            text: res.message,
                                            icon: 'success',
                                            position: 'top-right'
                                        });
                                        setTimeout(function() { // wait for 5 secs(2)
                                            window.location.href = res
                                                .redirect; // then redirect
                                        }, 3000);

                                    } else {

                                        $.toast({
                                            heading: 'Failed',
                                            text: res.message,
                                            icon: 'error',
                                            position: 'top-right'
                                        });
                                    }
                                },
                                error: function(error) {
                                    // $('.loader_div').hide();
                                    console.log(error);
                                    $.toast({
                                        heading: 'Error',
                                        text: error.responseJSON
                                            .message,
                                        icon: 'error',
                                        position: 'top-right'
                                    });

                                }
                            });
                        }
                    },
                    cancel: function() {
                        $.alert('Canceled!');
                    },

                }
            });

        });





        ///end of jQuery Onload
    });
</script>
