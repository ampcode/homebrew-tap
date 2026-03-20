class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773984128-g55bef6"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773984128-g55bef6/amp-darwin-arm64"
      sha256 "5455e6d91a43afb2c92bba92c09acee8ceb0ba81e3e98116f58b235af5408dc0"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773984128-g55bef6/amp-darwin-x64"
      sha256 "0e4e5f7643762b92b01a5ebc4c9256d07431c48b9d9359da6d1329aeba0b85f7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773984128-g55bef6/amp-linux-arm64"
      sha256 "46f7fc88f30b2aa3b9a63017e9e65b4fdf9bb925ab77dee2f5f086e83567a950"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773984128-g55bef6/amp-linux-x64"
      sha256 "24af729bde053fc8b5e7609c8e3f12767e497435577755b48a5a9c667bb9ff32"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
