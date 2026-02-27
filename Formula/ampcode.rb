class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772175751-gc3b356"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772175751-gc3b356/amp-darwin-arm64"
      sha256 "8284b5b88d25e4d682217aac75b9cb5bbc630cacce8acefa753c617591c199da"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772175751-gc3b356/amp-darwin-x64"
      sha256 "30d2645556beef4615e9c302fed3ee0d0dba78cd421f519874ec14341b494aaa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772175751-gc3b356/amp-linux-arm64"
      sha256 "a7f393da5cdd5820e59566383709036e6a6d8ef2bcc20fed59aea8ffe1197aef"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772175751-gc3b356/amp-linux-x64"
      sha256 "fe973cbccb264b9b010d71f55a4e844c70e77a138f6f899d77e382380c492e60"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
