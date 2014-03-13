testimonialCtrl = angular.module('TestimonialControllers', []);

testimonialCtrl.controller('TestimonialListingCtrl', ['$scope', 'Testimonials',
	function($scope, Testimonials) {
		$scope.testimonials = Testimonials.query();
		$scope.orderProp = "id";
		
		$scope.addedTestimonial = {
			body: "",
			submitter: ""
		};
		
		$scope.addTestimonial = function () {
			if($scope.addedTestimonial.submitter == null || $scope.addedTestimonial.submitter.length < 1){
				$scope.addedTestimonial.submitter = "Anonymous";
			}
			Testimonials.save($scope.addedTestimonial, function (result) {
				$scope.addedTestimonial = {
					body: "",
					submitter: ""
				}
				$scope.testimonials.push(result);
			});
		};
	}
]);