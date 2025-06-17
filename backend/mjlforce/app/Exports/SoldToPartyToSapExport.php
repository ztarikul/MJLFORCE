<?php

namespace App\Exports;

use App\Models\SoldToParty;
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

class SoldToPartyToSapExport implements FromArray, WithHeadings, WithStyles, WithEvents
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
            ' ',
            $soldToParty->bin_no,
            ' ',
            $soldToParty->vat_reg_num,
            ' ',
            ' ',
            ' ',
            $soldToParty->recon_acc,
            $soldToParty->fi_payment_terms,
            $soldToParty->currency,
            ' ',
            ' ',
            $soldToParty->cust_pricing_procedure,
            $soldToParty->shipping_condition,
            ' ',
            $soldToParty->delivering_plant,
            $soldToParty->other_combination,
            ' ',
            $soldToParty->incoterms,
            $soldToParty->incoterms_loc_1,
            ' ',
            $soldToParty->sd_payment_terms,
            $soldToParty->acc_assignment_group,
            $soldToParty->tax_classification,
            ' ',
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