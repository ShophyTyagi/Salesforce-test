import { LightningElement, wire } from 'lwc';
import getAccountByIndustry from '@salesforce/apex/AccountHelper.getAccountByIndustry';

export default class AccountList extends LightningElement {
    accounts;
    error;

    @wire(getAccountByIndustry, {industry: 'Technology'})
    wiredAccounts({ data, error }) {
        if(data) this.accounts = data;
        if(error) this.error = error;
    }
}