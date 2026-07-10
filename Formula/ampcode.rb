class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783674082-g314196"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783674082-g314196/amp-darwin-arm64"
      sha256 "7ae8352fcdef2776033464d98d23cb2cb466591ca949f7516e2f7001bed0d685"
    else
      url "https://static.ampcode.com/cli/0.0.1783674082-g314196/amp-darwin-x64"
      sha256 "60e066b4c4eb8cc712d064b477c764d020f5b03d211225d1f5c6811b6f2bca3d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783674082-g314196/amp-linux-arm64"
      sha256 "8bc64178f1f426bb291a158c6b07569187ced9bcf9765134e5549804bba68341"
    else
      url "https://static.ampcode.com/cli/0.0.1783674082-g314196/amp-linux-x64"
      sha256 "e38c09d77ca0eaff45b498b5f017fa6b7f00877244388bbf959a3926278a70a5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
