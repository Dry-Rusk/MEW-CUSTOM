<!-- If unlocked with PK -->
<article class="row block" ng-hide="wallet.type=='addressOnly'">

    <h2 class="col-xs-12" translate="CREATETOKEN_Title">
        Token generation
    </h2>

    <!-- Name -->
    <article class="clearfix">
        <section class="col-xs-11">
            <label translate="CREATETOKEN_name">
                Name of your asset
            </label>
            <p translate="CREATETOKEN_name_help">
                Please use only Latin letters
            </p>
            <input class="form-control"
                   type="text"
                   pattern="[a-zA-Z]{3,4}"
                   ng-model="token.name"/>
        </section>
    </article>

    <!-- Description -->
    <article class="clearfix">
        <section class="col-xs-11">
            <label translate="CREATETOKEN_description">
                Description:
            </label>
            <input class="form-control"
                   type="text"
                   placeholder="{{'CREATETOKEN_description_short' | translate }}"
                   ng-model="token.description"/>
        </section>
    </article>

    <!-- Total tokens -->
    <article class="clearfix">
        <section class="col-sm-11">
            <label translate="CREATETOKEN_totalTokens">
                Total tokens
            </label>
            <input class="form-control" type="number" ng-model="token.totalCount"/>
        </section>
    </article>

    <!-- Decimals -->
    <article class="clearfix">
        <section class="col-xs-11">
            <label translate="CREATETOKEN_decimals">
                Decimals
            </label>
            <p translate="CREATETOKEN_decimals_help">
                This field defines the number of decimal signs for your token
            </p>
            <input class="form-control"
                   type="number"
                   min="0"
                   max="18"
                   placeholder="{{'CREATETOKEN_decimals_short' | translate }}"
                   ng-model="token.decimals"/>
        </section>
    </article>

    <!-- ABI Textarea -->
    <article class="clearfix">
        <section class="col-xs-11">
            <label translate="CREATETOKEN_preview">
                Preview
            </label>
            <textarea class="form-control"
                      rows="6"
                      readonly=true
                      ng-model="contract.abi">
            </textarea>
        </section>
        <section class="col-xs-11">
            <label translate="CREATETOKEN_fee" class="red-fee" ng-show="tokenCalculate.fee != null">
                {{'CREATETOKEN_fee' | translate }}
            </label>
            <p translate="CREATETOKEN_Warning_1" class="red-fee" ng-show="tokenCalculate.isFeeErr">
                Your balance is not enough to pay transaction fees
            </p>
        </section>
        <section class="col-xs-11">
            <a class="btn btn-primary btn-block" type="submit" ng-click="generateToken()" translate="CREATETOKEN_generate">
                Generate
            </a>
        </section>
    </article>

</article>
<!-- / Content -->