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
                        <h5>Mega form</h5>
                    </div>
                    <div class="card-body">
                        <form class="theme-form mega-form" id="soldToPartyMisToSAPForm">
                            @csrf
                            <h6>Account Information</h6>
                            <div class="row">
                                {{-- <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Sold To Party</label>
                                        <select class="form-control" name="sold_to_party_id">
                                            <!-- Populate with sold to parties -->
                                        </select>
                                    </div>
                                </div> --}}
                                {{-- <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Customer Code</label>
                                        <input type="number" class="form-control" name="customer_code"
                                            placeholder="Customer Code">
                                    </div>
                                </div> --}}
                                <input type="hidden" name="sold_to_party_id" id="sold_to_party_id"
                                    value="{{ $soldToParty->id }}">


                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Customer Account Group</label>
                                        <select class="form-control" id="customer_type" name="customer_type">
                                            <option value="{{ $soldToParty->customerType->sap_code }}" selected>
                                                {{ $soldToParty->customerType->sap_code }} -
                                                {{ $soldToParty->customerType->name }}</option>
                                            @foreach ($customerTypes as $customerType)
                                                <option value="{{ $customerType['sap_code'] }}">
                                                    {{ $customerType['sap_code'] }}
                                                    - {{ $customerType['name'] }} </option>
                                            @endforeach
                                        </select>

                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Company Code</label>
                                        <input type="number" class="form-control" name="company_code"
                                            value="{{ $soldToParty->company_code }}" placeholder="Company Code">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Sales Org</label>
                                        <input type="number" class="form-control" name="sales_org"
                                            value="{{ $soldToParty->sales_org }}" placeholder="Sales Org">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Distribution Channel</label>
                                        <input type="number" class="form-control" name="distribution_ch"
                                            value="{{ $soldToParty->distribution_ch }}" placeholder="Distribution Channel">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Sales Division</label>
                                        <input type="text" class="form-control" name="sales_division"
                                            value="{{ $soldToParty->sales_division }}" placeholder="Sales Division">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Account Name</label>
                                        <input type="text" class="form-control" name="acc_name"
                                            value="{{ $soldToParty->acc_name }}" placeholder="Account Name">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Account Name 2</label>
                                        <input type="text" class="form-control" name="acc_name2"
                                            value="{{ $soldToParty->acc_name2 }}">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Search Term</label>
                                        <input type="text" class="form-control customize-field" name="search_term"
                                            value="{{ $soldToParty->search_term }}">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Search Term 2</label>
                                        <input type="text" class="form-control customize-field" name="search_term2"
                                            value="{{ $soldToParty->search_term2 }}">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Legacy Account Code</label>
                                        <input type="text" class="form-control customize-field" name="legacy_acc_code"
                                            value="{{ $soldToParty->legacy_acc_code }}">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Country</label>
                                        <input type="text" class="form-control" name="country"
                                            value="{{ $soldToParty->country }}" placeholder="Country">
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Region</label>
                                        <input type="text" class="form-control customize-field" name="region"
                                            id="region" value="{{ $soldToParty->region }}" placeholder="Region">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">District</label>
                                        <input type="text" class="form-control" name="district"
                                            value="{{ $soldToParty->district }}" placeholder="District">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Address</label>
                                        <input type="text" class="form-control" name="address"
                                            value="{{ $soldToParty->address }}" placeholder="Address">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">CEO</label>
                                        <input type="text" class="form-control" name="ceo"
                                            value="{{ $soldToParty->ceo }}" placeholder="CEO">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Address 2</label>
                                        <input type="text" class="form-control" name="address_2"
                                            value="{{ $soldToParty->address_2 }}" placeholder="Address 2">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Address 3</label>
                                        <input type="text" class="form-control" name="address_3"
                                            value="{{ $soldToParty->address_3 }}" placeholder="Address 3">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Language</label>
                                        <input type="text" class="form-control" name="lang"
                                            value="{{ $soldToParty->lang }}" placeholder="Language">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Phone</label>
                                        <input type="text" class="form-control" name="phone"
                                            value="{{ $soldToParty->phone }}" placeholder="Phone">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Mobile Phone</label>
                                        <input type="text" class="form-control" name="mobile_phone"
                                            value="{{ $soldToParty->mobile_phone }}" placeholder="Mobile Phone">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Fax</label>
                                        <input type="text" class="form-control customize-field" name="fax"
                                            value="{{ $soldToParty->fax }}" placeholder="Fax">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Email</label>
                                        <input type="email" class="form-control" name="email"
                                            value="{{ $soldToParty->email }}" placeholder="Email">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Other URL</label>
                                        <input type="url" class="form-control customize-field" name="other_url"
                                            value="{{ $soldToParty->other_url }}" placeholder="Other URL">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Postal Code</label>
                                        <input type="text" class="form-control" name="postal_code"
                                            value="{{ $soldToParty->postal_code }}" placeholder="Postal Code">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Contact Person Name</label>
                                        <input type="text" class="form-control" name="contact_person_name"
                                            value="{{ $soldToParty->contact_person_name }}"
                                            placeholder="Contact Person Name">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Contact Person Tel</label>
                                        <input type="text" class="form-control" name="contact_person_tel"
                                            value="{{ $soldToParty->contact_person_tel }}"
                                            placeholder="Contact Person Tel">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Contact Person Mobile</label>
                                        <input type="text" class="form-control" name="contact_person_mobile"
                                            value="{{ $soldToParty->contact_person_mobile }}"
                                            placeholder="Contact Person Mobile">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Group</label>
                                        <input type="text" class="form-control" name="group"
                                            value="{{ $soldToParty->group }}" placeholder="Group">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Payment Mode</label>
                                        <input type="text" class="form-control customize-field" name="payment_mode"
                                            value="{{ $soldToParty->payment_mode }}" placeholder="Payment Mode">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">BIN No</label>
                                        <input type="text" class="form-control" name="bin_no"
                                            value="{{ $soldToParty->bin_no }}" placeholder="BIN No">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">VAT Reg Num</label>
                                        <input type="text" class="form-control customize-field" name="vat_reg_num"
                                            value="{{ $soldToParty->vat_reg_num }}" placeholder="VAT Reg Num">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Recon Account</label>
                                        <input type="text" class="form-control" name="recon_acc"
                                            value="{{ $soldToParty->recon_acc }}" placeholder="Recon Account">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">FI Payment Terms</label>
                                        <select class="form-control customize-field" id="fi_payment_terms"
                                            name="fi_payment_terms">
                                            <option value="">Please Select</option>
                                            @foreach ($fiPaymentTerms as $term)
                                                <option value="{{ $term['term'] }}">{{ $term['term'] }} -
                                                    {{ $term['duration'] }} </option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Currency</label>

                                        <select class="form-control customize-field" id="currency" name="currency">
                                            <option value="">Please Select</option>
                                            @foreach ($currencies as $currency)
                                                <option value="{{ $currency['name'] }}">{{ $currency['name'] }} </option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Customer Pricing Procedure</label>
                                        <input type="number" class="form-control" name="cust_pricing_procedure"
                                            value="{{ $soldToParty->cust_pricing_procedure }}"
                                            placeholder="Pricing Procedure">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Shipping Condition</label>
                                        <input type="number" class="form-control" name="shipping_condition"
                                            value="{{ $soldToParty->shipping_condition }}"
                                            placeholder="Shipping Condition">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Delivering Plant</label>
                                        <input type="text" class="form-control customize-field"
                                            name="delivering_plant" value="{{ $soldToParty->delivering_plant }}"
                                            placeholder="Delivering Plant">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Other Combination</label>
                                        <input type="text" class="form-control" name="other_combination"
                                            value="{{ $soldToParty->other_combination }}"
                                            placeholder="Other Combination">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Incoterms</label>
                                        <input type="text" class="form-control" name="incoterms"
                                            value="{{ $soldToParty->incoterms }}" placeholder="Incoterms">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Incoterms Loc 1</label>
                                        <input type="text" class="form-control" name="incoterms_loc_1"
                                            value="{{ $soldToParty->incoterms_loc_1 }}" placeholder="Incoterms Loc 1">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">SD Payment Terms</label>
                                        <select class="form-control customize-field" id="sd_payment_terms"
                                            name="sd_payment_terms">
                                            <option value="">Please Select</option>
                                            @foreach ($fiPaymentTerms as $term)
                                                <option value="{{ $term['term'] }}">{{ $term['term'] }} -
                                                    {{ $term['duration'] }} </option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Account Assignment Group</label>
                                        <select class="form-control customize-field" id="acc_assignment_group"
                                            name="acc_assignment_group">
                                            <option value="">Please Select</option>
                                            @foreach ($accAssignmentGroups as $group)
                                                <option value="{{ $group['name'] }}">{{ $group['name'] }} </option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Tax Classification</label>
                                        <input type="number" class="form-control" name="tax_classification"
                                            value="1" placeholder="Tax Classification">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Territory</label>

                                        <select class="form-control" id="territory" name="territory"
                                            name="acc_assignment_group">
                                            <option value="{{ $soldToParty->territorySToP->id }}" selected>
                                                {{ $soldToParty->territorySToP->sap_code }} -
                                                {{ $soldToParty->territorySToP->name }}</option>
                                            @foreach ($territories as $territory)
                                                <option value="{{ $territory->id }}">{{ $territory->sap_code }} -
                                                    {{ $territory->name }} </option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Customer Group</label>
                                        <input type="text" class="form-control" id="customer_group"
                                            name="customer_group"
                                            value="{{ $soldToParty->CustomerGroup->sap_code }} - {{ $soldToParty->CustomerGroup->name }}"
                                            placeholder="Customer Group" readonly>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Trade Category</label>

                                        <select class="form-control" id="trade_category" name="trade_category">
                                            <option value="{{ $soldToParty->tradeCategory->sap_code }}" selected>
                                                {{ $soldToParty->tradeCategory->sap_code }} -
                                                {{ $soldToParty->tradeCategory->name }}</option>
                                            @foreach ($tradeCategories as $tradeCategory)
                                                <option value="{{ $tradeCategory->sap_code }}">
                                                    {{ $tradeCategory->sap_code }}
                                                    - {{ $tradeCategory->name }} </option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Trade Sub Category</label>
                                        <select class="form-control" id="trade_sub_category" name="trade_sub_category">
                                            <option value="{{ $soldToParty->tradeSubCategory->sap_code }}" selected>
                                                {{ $soldToParty->tradeSubCategory->sap_code }} -
                                                {{ $soldToParty->tradeSubCategory->name }}</option>
                                            @foreach ($tradeSubCategories as $tradeSubCategory)
                                                <option value="{{ $tradeSubCategory->sap_code }}">
                                                    {{ $tradeSubCategory->sap_code }}
                                                    - {{ $tradeSubCategory->name }} </option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Customer Group 3</label>
                                        <input type="text" class="form-control customize-field"
                                            name="customer_group_3" value="{{ $soldToParty->customer_group_3 }}"
                                            placeholder="Customer Group 3">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Customer Group 4</label>
                                        <input type="text" class="form-control customize-field"
                                            name="customer_group_4" value="{{ $soldToParty->customer_group_4 }}"
                                            placeholder="Customer Group 4">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Customer Group 5</label>
                                        <input type="text" class="form-control customize-field"
                                            name="customer_group_5" value="{{ $soldToParty->customer_group_5 }}"
                                            placeholder="Customer Group 5">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">BP Type</label>
                                        <input type="text" class="form-control" name="bp_type"
                                            value="{{ $soldToParty->bp_type }}" placeholder="BP Type" disabled>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Attr 2</label>
                                        <input type="text" class="form-control customize-field" name="attr_2"
                                            value="{{ $soldToParty->attr_2 }}" placeholder="Attr 2">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Attr 3</label>
                                        <input type="text" class="form-control customize-field" name="attr_3"
                                            value="{{ $soldToParty->attr_3 }}" placeholder="Attr 3">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Attr 4</label>
                                        <input type="text" class="form-control customize-field" name="attr_4"
                                            value="{{ $soldToParty->attr_4 }}" placeholder="Attr 4">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Factory Address 2</label>
                                        <input type="text" class="form-control customize-field"
                                            name="factory_address_2" value="{{ $soldToParty->factory_address_2 }}"
                                            placeholder="Factory Address 2">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Loc Division</label>
                                        <input type="text" class="form-control" name="loc_division_id"
                                            value="{{ $soldToParty->locDivision->name }}" placeholder="Division"
                                            disabled>

                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Loc District</label>
                                        <input type="text" class="form-control" name="loc_district_id"
                                            value="{{ $soldToParty->LocDistrict->name }}" placeholder="District Name"
                                            disabled>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Loc Upazila</label>
                                        <input type="text" class="form-control" name="loc_upazila_id"
                                            value="{{ $soldToParty->LocUpazila->name }}" placeholder="Upazila Name"
                                            disabled>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Loc Post Office</label>
                                        <input type="text" class="form-control" name="loc_post_office_id"
                                            value="{{ $soldToParty->LocPostOffice->name }}"
                                            placeholder="Post Office Name" disabled>

                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Sales Person</label>
                                        <input type="text" class="form-control" name="employee"
                                            value="{{ $soldToParty->employee->name }}" placeholder="Sales Person"
                                            readonly>

                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Remarks</label>
                                        <textarea class="form-control" name="remarks" value="{{ $soldToParty->remarks }}" placeholder="Remarks"></textarea>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Discount Eligibility</label>
                                        <input type="text" class="form-control" name="is_eligible_discount"
                                            value="{{ $soldToParty->is_eligible_discount === 1 ? 'Eligible' : 'Not Eligible' }}"
                                            placeholder="Discount Eligibility" readonly>

                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Active Status</label>
                                        <input type="text" class="form-control" name="activeStatus"
                                            value="{{ $soldToParty->activeStatus === 1 ? 'Active' : 'Inactive' }}"
                                            placeholder="Active Status" readonly>

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


        $('#trade_category').on('change', function() {
            var sold_to_party_id = $('#sold_to_party_id').val();

            $.ajax({
                type: "GET",
                url: "{{ url('cma/soldToParty_request_form') }}" + '/' + sold_to_party_id,
                data: {
                    trade_category: $(this).val(),
                    action: 'getTradeSubCategories'
                },
                success: function(res) {
                    var _html = '';
                    if (res.status === 'success') {
                        var _html = '<option value="">Please Select</option>';
                        $.each(res.tradeSubCategories, function(index, tradeSubCategory) {
                            _html += '<option value="' + tradeSubCategory.sap_code +
                                '">' +
                                tradeSubCategory.sap_code + ' - ' + tradeSubCategory
                                .name +
                                '</option>';
                        });

                    } else {
                        _html = '<option value="">No Sub Category Found</option>';
                    }
                    $('#trade_sub_category').html(_html);
                }
            });


        });

        $('#trade_sub_category').on('change', function() {
            var sold_to_party_id = $('#sold_to_party_id').val();

            $.ajax({
                type: "GET",
                url: "{{ url('cma/soldToParty_request_form') }}" + '/' + sold_to_party_id,
                data: {
                    trade_category: $('#trade_category').val(),
                    trade_sub_category: $(this).val(),
                    action: 'customerGroups'
                },
                success: function(res) {
                    console.log(res);
                    if (res.status === 'success') {
                        $('#customer_group').val(res.customerGroup.sap_code + ' - ' + res
                            .customerGroup
                            .name);
                    } else {
                        $('#customer_group').val('');
                    }

                }
            });


        });


        $('#soldToPartyMisToSAPForm').submit(function(e) {

            let formData = new FormData(this);
            let sold_to_party_id = $('#sold_to_party_id').val();

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
                                url: "{{ url('cma/soldToPartyMisToSAP') }}" +
                                    '/' + sold_to_party_id,
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
                                    if (res.status == 1) {
                                        $.toast({
                                            heading: 'Success',
                                            text: res.msg,
                                            icon: 'success',
                                            position: 'top-right'
                                        });
                                        setTimeout(function() { // wait for 5 secs(2)
                                            location.reload();
                                        }, 3000);
                                    }
                                    if (res.status == 0) {
                                        $.toast({
                                            heading: 'Failed',
                                            text: res.msg,
                                            icon: 'error',
                                            position: 'top-right'
                                        });
                                    }
                                },
                                error: function(error) {
                                    // $('.loader_div').hide();
                                    // console.log(errors);
                                    $.toast({
                                        heading: 'Error',
                                        text: 'Something went wrong',
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
