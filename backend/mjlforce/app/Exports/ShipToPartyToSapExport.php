<?php

namespace App\Exports;

use App\Models\ShipToParty;
use Maatwebsite\Excel\Concerns\{
    FromArray,
    WithHeadings,
    WithStyles,
    WithColumnWidths,
    ShouldAutoSize,
    WithEvents
};
use Maatwebsite\Excel\Events\AfterSheet;
use PhpOffice\PhpSpreadsheet\Worksheet\Worksheet;
use PhpOffice\PhpSpreadsheet\Style\Alignment;
use PhpOffice\PhpSpreadsheet\Style\NumberFormat;

class ShipToPartyToSapExport implements FromArray, WithHeadings, WithStyles, WithEvents
{
    protected $data;
    protected $headers;

    public function __construct($ship_to_party_id)
    {
        $shipToParty = ShipToParty::select(
            // A Blank
            'customer_code', //B
            'customer_acc_group', //C
            'company_code', //D
            'sales_org', //E
            'distribution_ch', //F
            'sales_division', //G
            'acc_name', //H
            'acc_name2', //I
            'search_term', //J
            'search_term2', //K
            'legacy_acc_code', //L
            'country', //M
            //N Blank 
            'region', //O
            //P Blank
            'district', //Q
            'address', //R
            //S Blank
            //T Blank
            'ceo', //U
            //V Blank
            'address_2', //W
            'address_3', //X
            //Y Blank
            //Z Blank
            //AA Blank
            'lang', //AB
            'phone', //AC
            'mobile_phone', //AD
            'fax', //AE
            'email', //AF
            'other_url', //AG
            'postal_code', //AH
            //AI Blank
            //AJ Blank
            'contact_person_name', //AK
            'contact_person_tel', //AL
            'contact_person_mobile', //AM
            //AN Blank
            //AO Blank
            //AP Blank
            'group', //AQ
            //AR Blank
            //AS Blank
            //AT Blank
            'payment_mode', //AU
            //AV Blank
            'bin_no', //AW
            //AX Blank  
            'vat_reg_num', //AY
            //AZ Blank
            //BA Blank
            //BB Blank
            'recon_acc', //BC
            'fi_payment_terms', //BD
            'currency', //BE
            //BF Blank
            //BG Blank
            'cust_pricing_procedure', //BH
            'shipping_condition', //BI
            // BJ Blank
            'delivering_plant', //BK
            'other_combination', //BL
            // BM Blank
            'incoterms', //BN
            'incoterms_loc_1', //BO
            //BP Blank
            'sd_payment_terms', //BQ
            'acc_assignment_group', //BR
            'tax_classification', //BS
            // BT Blank
            'territory', //BU
            'customer_group', //BV
            'trade_category', //BW
            'trade_sub_category', //BX
            'customer_group_3', //BY
            'customer_group_4', //BZ
            'customer_group_5', //CA
            'bp_type', //CB
            'attr_2', //CC
            'attr_3', //CD
            'attr_4', //CE
            'attr_5', //CF
            'factory_address_2', //CG
            ' ',
            ' ',
            ' ',
            'sold_to_party',
            'sales_person',
            'omera_sales_person',

        )->find($ship_to_party_id);

        $data = [
            [
            $shipToParty->customer_code,
            $shipToParty->customer_acc_group,
            $shipToParty->company_code,
            $shipToParty->sales_org,
            $shipToParty->distribution_ch,
            $shipToParty->sales_division,
            $shipToParty->acc_name,
            $shipToParty->acc_name2,
            $shipToParty->search_term,
            $shipToParty->search_term2,
            $shipToParty->legacy_acc_code,
            $shipToParty->country,
            ' ',
            $shipToParty->region,
            ' ',
            $shipToParty->district,
            $shipToParty->address,
            ' ',
            ' ',
            $shipToParty->ceo,
            ' ',
            $shipToParty->address_2,
            $shipToParty->address_3,
            ' ',
            ' ',
            ' ',
            $shipToParty->lang,
            $shipToParty->phone,
            $shipToParty->mobile_phone,
            $shipToParty->fax,
            $shipToParty->email,
            $shipToParty->other_url,
            $shipToParty->postal_code,
            ' ',
            ' ',
            $shipToParty->contact_person_name,
            $shipToParty->contact_person_tel,
            $shipToParty->contact_person_mobile,
            ' ',
            ' ',
            ' ',
            $shipToParty->group,
            ' ',
            ' ',
            ' ',
            $shipToParty->payment_mode,
            ' ',
            $shipToParty->bin_no,
            ' ',
            $shipToParty->vat_reg_num,
            ' ',
            ' ',
            ' ',
            $shipToParty->recon_acc,
            $shipToParty->fi_payment_terms,
            $shipToParty->currency,
            ' ',
            ' ',
            $shipToParty->cust_pricing_procedure,
            $shipToParty->shipping_condition,
            ' ',
            $shipToParty->delivering_plant,
            $shipToParty->other_combination,
            ' ',
            $shipToParty->incoterms,
            $shipToParty->incoterms_loc_1,
            ' ',
            $shipToParty->sd_payment_terms,
            $shipToParty->acc_assignment_group,
            $shipToParty->tax_classification,
            ' ',
            $shipToParty->territory,
            $shipToParty->customer_group,
            $shipToParty->trade_category,
            $shipToParty->trade_sub_category,
            $shipToParty->customer_group_3,
            $shipToParty->customer_group_4,
            $shipToParty->customer_group_5,
            $shipToParty->bp_type,
            $shipToParty->attr_2,
            $shipToParty->attr_3,
            $shipToParty->attr_4,
            $shipToParty->attr_5,
            $shipToParty->factory_address_2,
            ' ',
            ' ',
            ' ',
            $shipToParty->soldToParty->customer_code ? $shipToParty->soldToParty->customer_code : ' ',
            $shipToParty->employee->sap_code,
            'omera_sales_person',
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
            'blank',
            'BIN No',
            'blank',
            'VAT Reg Num',
            'blank',
            'blank',
            'blank',
            'Recon Account',
            'FI Payment Terms',
            'Currency',
            'blank',
            'blank',
            'Customer Pricing Procedure',
            'Shipping Condition',
            'blank',
            'Delivering Plant',
            'Other Combination',
            'blank',
            'Incoterms',
            'Incoterms Location 1',
            'black',
            'SD Payment Terms',
            'Account Assignment Group',
            'Tax Classification',
            'blank',
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
            ' ',
            ' ',
            ' ',
            'Sold To Party',
            'Sales Person',
            'Omera Sales Person',
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

      public function styles(Worksheet $sheet)
    {
        return [
            // Header row styling
            1 => [
                'font' => ['bold' => true, 'color' => ['rgb' => 'FFFFFF']],
                'fill' => ['fillType' => 'solid', 'startColor' => ['rgb' => '4CAF50']],
                'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
            ],
        ];
    }

     public function registerEvents(): array
    {
        return [
            AfterSheet::class => function (AfterSheet $event) {
                // Determine how many rows and columns you have
                $rowCount = count($this->data) + 1; // +1 for headers
                $columnCount = count($this->headers);

                // Convert column count to Excel column letters (e.g., C, D, Z)
                $lastColumn = \PhpOffice\PhpSpreadsheet\Cell\Coordinate::stringFromColumnIndex($columnCount);

                // Define full range: A1:[lastColumn][lastRow]
                $cellRange = "A1:{$lastColumn}{$rowCount}";

                $sheet = $event->sheet->getDelegate();

                // Set alignment left and number format to General
                $sheet->getStyle($cellRange)->applyFromArray([
                    'alignment' => [
                        'horizontal' => Alignment::HORIZONTAL_LEFT,
                        'vertical'   => Alignment::VERTICAL_CENTER,
                    ],
                    'numberFormat' => [
                        'formatCode' => NumberFormat::FORMAT_GENERAL,
                    ],
                ]);
            },
        ];
    }

}