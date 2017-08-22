Pod::Spec.new do |s|
    s.name             = 'SampleMessengerCocoapodFramework'
    s.version          = '0.1.0'
    s.summary          = 'some desc'

    s.description      = <<-DESC
    some desc
    DESC

    s.homepage         = 'http://www.example.com'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'rzolin' => 'rzolin@gmail.com' }
    s.source           = { :git => 'https://github.com/rzolin/SampleMessengerCocoapodFramework-.git', :tag => s.version.to_s }

    # Platform setup
    s.requires_arc = true
    s.ios.deployment_target = '8.0'

    s.default_subspec = 'Core'

    ### Subspecs
    s.subspec 'Core' do |cs|
        cs.dependency 'SampleMessengerCocoapodFramework/DataManagement'
        cs.dependency 'SampleMessengerCocoapodFramework/Networking'
    end

    s.subspec 'DataManagement' do |ds|
    ds.source_files = 'Code/DataManagement.h', 'Code/DataManagement/**/*'
    #  ds.resources = [ 'Code/DataManagement/Model/Model.xcdatamodeld', 'Code/DataManagement/Model/Model.xcdatamodeld/*.xcdatamodel' ]
    #  ds.preserve_paths = 'Code/DataManagement/Model/Model.xcdatamodeld'
    end

    s.subspec 'Networking' do |ns|
    ns.source_files = 'Code/Networking.h', 'Code/Networking/**/*.{h,m,swift}'
    end

    # s.resource_bundles = {
    #   'SampleMessengerCocoapodFramework' => ['SampleMessengerCocoapodFramework/Assets/*.png']
    # }

    # s.public_header_files = 'Pod/Classes/**/*.h'
    # s.frameworks = 'UIKit', 'MapKit'
    # s.dependency 'AFNetworking', '~> 2.3'
end
