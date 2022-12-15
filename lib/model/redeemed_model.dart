class RedeemedModel {
  int? id;
  String? name;
  String? interestRate;
  String? imageUrl;
  String? lunchAppId;
  int? minLoneAmount;
  int? maxLoneAmount;

  RedeemedModel(
      {this.id,
      this.name,
      this.interestRate,
      this.minLoneAmount,
      this.maxLoneAmount,
      this.imageUrl,
      this.lunchAppId});
}

List<RedeemedModel> redeemedList = [
  RedeemedModel(
    id: 1,
    name: "True Lone",
    interestRate: '0.02%',
    maxLoneAmount: 10000,
    minLoneAmount: 200000,
  ),
  RedeemedModel(
    id: 2,
    name: "Speed Lone",
    interestRate: '0.03%',
    maxLoneAmount: 10000,
    minLoneAmount: 100000,
  ),
  RedeemedModel(
    id: 3,
    name: "True Money Lone",
    interestRate: '0.05%',
    maxLoneAmount: 10000,
    minLoneAmount: 300000,
  ),
  RedeemedModel(
    id: 4,
    name: "Quick Lone Easy Lone",
    interestRate: '0.02%',
    maxLoneAmount: 10000,
    minLoneAmount: 300000,
  ),
  RedeemedModel(
    id: 5,
    name: "Fast Money Lone",
    interestRate: '0.01%',
    maxLoneAmount: 10000,
    minLoneAmount: 200000,
  ),
  RedeemedModel(
    id: 6,
    name: "Easy Money Lone",
    interestRate: '0.03%',
    maxLoneAmount: 10000,
    minLoneAmount: 500000,
  ),
];
