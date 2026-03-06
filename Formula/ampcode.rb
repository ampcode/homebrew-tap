class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772787487-gcff475"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772787487-gcff475/amp-darwin-arm64"
      sha256 "8da04ac06caba804fc73743434ceb230d97110442e40e81bfb6a0cc9aa864014"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772787487-gcff475/amp-darwin-x64"
      sha256 "fa99531e59052b768e9fa7939559d1c85e18d840d5a2c971c227100ff4e87233"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772787487-gcff475/amp-linux-arm64"
      sha256 "220580e6a8afe7d9fcff56417e318f5fbaef5145cee850e516895e9148f96fdd"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772787487-gcff475/amp-linux-x64"
      sha256 "c5c0ec2d7954b51b1af8abd18cb6923d90c8aaa2bdad4367fcf742caf3f613bd"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
