@extends('components.master')
@section('title', 'Dashboard')
@section('content')

    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header pb-0">
                        <h5>Mega form</h5>
                    </div>
                    <div class="card-body">
                        <form class="theme-form mega-form">
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
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Customer Account Group</label>
                                        <input type="text" class="form-control" name="customer_acc_group"
                                            value="{{ $soldToParty->customer_acc_group }}" placeholder="Account Group">
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
                                            value="{{ $soldToParty->acc_name2 }}" placeholder="Account Name 2">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Search Term</label>
                                        <input type="text" class="form-control" name="search_term"
                                            value="{{ $soldToParty->search_term }}" placeholder="Search Term">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Search Term 2</label>
                                        <input type="text" class="form-control" name="search_term2"
                                            value="{{ $soldToParty->search_term2 }}" placeholder="Search Term 2">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Legacy Account Code</label>
                                        <input type="text" class="form-control" name="legacy_acc_code"
                                            value="{{ $soldToParty->legacy_acc_code }}" placeholder="Legacy Account Code">
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
                                        <input type="number" class="form-control" name="region"
                                            value="{{ $soldToParty->region }}" placeholder="Region">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Region ID</label>
                                        <select class="form-control" name="region_id">
                                            <!-- Populate with regions -->
                                        </select>
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
                                        <input type="text" class="form-control" name="fax"
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
                                        <input type="url" class="form-control" name="other_url"
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
                                        <input type="text" class="form-control" name="payment_mode"
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
                                        <input type="text" class="form-control" name="vat_reg_num"
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
                                        <input type="text" class="form-control" name="fi_payment_terms"
                                            value="{{ $soldToParty->fi_payment_terms }}" placeholder="FI Payment Terms">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Currency</label>
                                        <input type="text" class="form-control" name="currency"
                                            value="{{ $soldToParty->currency }}" placeholder="Currency">
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
                                        <input type="text" class="form-control" name="delivering_plant"
                                            value="{{ $soldToParty->delivering_plant }}" placeholder="Delivering Plant">
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
                                        <input type="text" class="form-control" name="incoterms_loc_1"
                                            value="{{ $soldToParty->incoterms_loc_1 }}" placeholder="SD Payment Terms">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Account Assignment Group</label>
                                        <input type="number" class="form-control" name="acc_assignment_group"
                                            value="{{ $soldToParty->acc_assignment_group }}"
                                            placeholder="Assignment Group">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Tax Classification</label>
                                        <input type="number" class="form-control" name="tax_classification"
                                            value="{{ $soldToParty->tax_classification }}"
                                            placeholder="Tax Classification">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Territory</label>
                                        <input type="text" class="form-control" name="territory"
                                            value="{{ $soldToParty->territory }}" placeholder="Territory">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Territory ID</label>
                                        <select class="form-control" name="territory_id">
                                            <!-- Populate with territories -->
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Customer Group</label>
                                        <input type="text" class="form-control" name="customer_group"
                                            value="{{ $soldToParty->customer_group }}" placeholder="Customer Group">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Trade Category</label>
                                        <input type="text" class="form-control" name="trade_category"
                                            value="{{ $soldToParty->trade_category }}" placeholder="Trade Category">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Trade Sub Category</label>
                                        <input type="text" class="form-control" name="trade_sub_category"
                                            value="{{ $soldToParty->trade_sub_category }}"
                                            placeholder="Trade Sub Category">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Customer Group 3</label>
                                        <input type="text" class="form-control" name="customer_group_3"
                                            value="{{ $soldToParty->customer_group_3 }}" placeholder="Customer Group 3">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Customer Group 4</label>
                                        <input type="text" class="form-control" name="customer_group_4"
                                            value="{{ $soldToParty->customer_group_4 }}" placeholder="Customer Group 4">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Customer Group 5</label>
                                        <input type="text" class="form-control" name="customer_group_5"
                                            value="{{ $soldToParty->customer_group_5 }}" placeholder="Customer Group 5">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">BP Type</label>
                                        <input type="text" class="form-control" name="bp_type"
                                            value="{{ $soldToParty->bp_type }}" placeholder="BP Type">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Attr 2</label>
                                        <input type="text" class="form-control" name="attr_2"
                                            value="{{ $soldToParty->attr_2 }}" placeholder="Attr 2">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Attr 3</label>
                                        <input type="text" class="form-control" name="attr_3"
                                            value="{{ $soldToParty->attr_3 }}" placeholder="Attr 3">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Attr 4</label>
                                        <input type="text" class="form-control" name="attr_4"
                                            value="{{ $soldToParty->attr_4 }}" placeholder="Attr 4">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Factory Address 2</label>
                                        <input type="text" class="form-control" name="factory_address_2"
                                            value="{{ $soldToParty->factory_address_2 }}"
                                            placeholder="Factory Address 2">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Loc Division</label>
                                        <select class="form-control" name="loc_division_id">
                                            <!-- Populate with divisions -->
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Loc District</label>
                                        <select class="form-control" name="loc_district_id">
                                            <!-- Populate with districts -->
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Loc Upazila</label>
                                        <select class="form-control" name="loc_upazila_id">
                                            <!-- Populate with upazilas -->
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Loc Post Office</label>
                                        <select class="form-control" name="loc_post_office_id">
                                            <!-- Populate with post offices -->
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Image</label>
                                        <input type="file" class="form-control" name="image">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Latitude</label>
                                        <input type="number" step="0.000001" class="form-control" name="lat"
                                            placeholder="Latitude">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Longitude</label>
                                        <input type="number" step="0.000001" class="form-control" name="long"
                                            placeholder="Longitude">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Employee</label>
                                        <select class="form-control" name="employee_id"
                                            value="{{ $soldToParty->employee_id }}">
                                            <!-- Populate with employees -->
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Remarks</label>
                                        <textarea class="form-control" name="remarks" value="{{ $soldToParty->region }}" placeholder="Remarks"></textarea>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Is Eligible Discount</label>
                                        <select class="form-control" name="is_eligible_discount"
                                            value="{{ $soldToParty->is_eligible_discount }}">
                                            <option value="1">Yes</option>
                                            <option value="0">No</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Active Status</label>
                                        <select class="form-control" name="activeStatus">
                                            <option value="1">Active</option>
                                            <option value="0">Inactive</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Created By</label>
                                        <input type="number" class="form-control" name="created_by"
                                            placeholder="Created By">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="col-form-label">Hostname</label>
                                        <input type="text" class="form-control" name="hostname"
                                            placeholder="Hostname">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="mb-3">
                                    <label class="col-form-label">Status</label>
                                    <select class="form-control" name="status">
                                        <option value="active">Active</option>
                                        <option value="inactive">Inactive</option>
                                    </select>
                                </div>
                            </div>
                    </div>


                    </form>

                </div>
                <div class="card-footer">
                    <button class="btn btn-primary">Submit</button>
                    <button class="btn btn-secondary">Cancel</button>
                </div>
            </div>
        </div>

    </div>
    </div>

@endsection
