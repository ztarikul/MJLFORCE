<?php

namespace App\Exports;

use App\Models\SoldToParty;
use Maatwebsite\Excel\Concerns\FromArray;
use Maatwebsite\Excel\Concerns\WithHeadings;

class SoldToPartyToSapExport implements FromArray, WithHeadings
{
    protected $data;
    protected $headers;

    public function __construct($sold_to_party_id)
    {
        $soldToParty = SoldToParty::select(
            // A Blank
            'customer_code', //B
            'customer_acc_group', //C
            'company_code', //D
            'sales_org', //E
            'distribution_ch', //F
            'sales_division', //G
            'acc_name', //H
            'acc_name2', //I
            //J Blank
            'search_term', //K
            'search_term2', //L
            'legacy_acc_code', //M
            'country', //N
            //O Blank 
            'region', //P
            //Q Blank
            'district', //R
            'address', //S
            //T Blank
            //U Blank
            'ceo', //V
            //W Blank
            'address_2', //X
            'address_3', //Y
            //Z Blank
            //AA Blank
            //AB Blank
            'lang', //AC
            'phone', //AD
            'mobile_phone', //AE
            'fax', //AF
            'email', //AG
            'other_url', //AH
            'postal_code', //AI
            //AJ Blank
            //AK Blank
            'contact_person_name', //AL
            'contact_person_tel', //AM
            'contact_person_mobile', //AN
            //AO Blank
            //AP Blank
            //AQ Blank
            'group', //AR
            //AS Blank
            //AT Blank
            //AU Blank
            'payment_mode', //AV
            //AW Blank
            'bin_no', //AX
            //AY Blank  
            'vat_reg_num', //AZ
            //BA Blank
            //BB Blank
            //BC Blank
            'recon_acc', //BD
            'fi_payment_terms', //BE
            'currency', //BF
            //BG Blank
            //BH Blank
            'cust_pricing_procedure', //BI
            'shipping_condition', //BJ
            // BK Blank
            'delivering_plant', //BL
            'other_combination', //BM
            // BN Blank
            'incoterms', //BO
            'incoterms_loc_1', //BP
            //BQ Blank
            'sd_payment_terms', //BR
            'acc_assignment_group', //BS
            'tax_classification', //BT
            // BU Blank
            'territory', //BV
            'customer_group', //BW
            'trade_category', //BX
            'trade_sub_category', //BY
            'customer_group_3', //BZ
            'customer_group_4', //CA
            'customer_group_5', //CB
            'bp_type', //CC
            'attr_2', //CD
            'attr_3', //CE
            'attr_4', //CF
            'attr_5', //CG
            'factory_address_2', //CH
        )->find($sold_to_party_id);

        $data = [
            [
            $soldToParty->customer_code,
            $soldToParty->customer_acc_group,
            $soldToParty->company_code,
            $soldToParty->sales_org,
            $soldToParty->distribution_ch,
            $soldToParty->sales_division,
            $soldToParty->acc_name,
            $soldToParty->acc_name2,
            ' ',
            $soldToParty->search_term,
            $soldToParty->search_term2,
            $soldToParty->legacy_acc_code,
            $soldToParty->country,
            ' ',
            $soldToParty->region,
            ' ',
            $soldToParty->district,
            $soldToParty->address,
            ' ',
            ' ',
            $soldToParty->ceo,
            ' ',
            $soldToParty->address_2,
            $soldToParty->address_3,
            ' ',
            ' ',
            ' ',
            $soldToParty->lang,
            $soldToParty->phone,
            $soldToParty->mobile_phone,
            $soldToParty->fax,
            $soldToParty->email,
            $soldToParty->other_url,
            $soldToParty->postal_code,
            ' ',
            ' ',
            $soldToParty->contact_person_name,
            $soldToParty->contact_person_tel,
            $soldToParty->contact_person_mobile,
            ' ',
            ' ',
            ' ',
            $soldToParty->group,
            ' ',
            ' ',
            ' ',
            $soldToParty->payment_mode,
            $soldToParty->bin_no,
            $soldToParty->vat_reg_num,
            $soldToParty->recon_acc,
            $soldToParty->fi_payment_terms,
            $soldToParty->currency,
            $soldToParty->cust_pricing_procedure,
            $soldToParty->shipping_condition,
            $soldToParty->delivering_plant,
            $soldToParty->other_combination,
            $soldToParty->incoterms,
            $soldToParty->incoterms_loc_1,
            $soldToParty->sd_payment_terms,
            $soldToParty->acc_assignment_group,
            $soldToParty->tax_classification,
            $soldToParty->territory,
            $soldToParty->customer_group,
            $soldToParty->trade_category,
            $soldToParty->trade_sub_category,
            $soldToParty->customer_group_3,
            $soldToParty->customer_group_4,
            $soldToParty->customer_group_5,
            $soldToParty->bp_type,
            $soldToParty->attr_2,
            $soldToParty->attr_3,
            $soldToParty->attr_4,
            $soldToParty->attr_5,
            $soldToParty->factory_address_2,
            ]
        ];

        $headers = [
            [
            'Customer Code',
            'BP Group/Customer Account Group',
            'Company Code',
            'Sales Organization',
            'Distribution Channel',
            'Division',
            'Name',
            'Name 2',
            'blank',
            'Search Term 1',
            'Search Term 2',
            'External BP Number',
            'Country',
            'blank',
            'Region',
            'blank',
            'City',
            'Address',
            'blank',
            'blank',
            'c/o',
            'blank',
            'Street 4',
            'Street 5',
            'blank',
            'blank',
            'blank',
            'Language',
            'Telephone(Communication)',
            'Mobile Phone(Communication)',
            'Fax(Communication)',
            'Email(Communication)',
            'Other URL(Communication)',
            'Postal Code',
            'blank',
            'blank',
            'c/o',
            'Telephone(Communication)',
            'Mobile Phone(Communication)',
            'blank',
            'blank',
            'blank',
            'External Address No.',
            'blank',
            'blank',
            'blank',
            'Attribute 1',
            'BIN No',
            'VAT Reg Num',
            'Recon Account',
            'FI Payment Terms',
            'Currency',
            'Customer Pricing Procedure',
            'Shipping Condition',
            'Delivering Plant',
            'Other Combination',
            'Incoterms',
            'Incoterms Location 1',
            'SD Payment Terms',
            'Account Assignment Group',
            'Tax Classification',
            'Territory',
            'Customer Group',
            'Trade Category',
            'Trade Sub Category',
            'Customer Group 3',
            'Customer Group 4',
            'Customer Group 5',
            'BP Type',
            'Attr 2',
            'Attr 3',
            'Attr 4',
            'Attr 5',
            'Factory Address 2',
        ]
    ];


        $this->data = $data;
        $this->headers = $headers;
    }

    public function array(): array
    {
        // Only return values to write as rows
        return $this->data;
    }

    public function headings(): array
    {
        // Return custom headers (column names)
        return $this->headers;
    }
}