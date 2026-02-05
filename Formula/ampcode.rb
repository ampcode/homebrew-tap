class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770278891-gd99c8f"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770278891-gd99c8f/amp-darwin-arm64"
      sha256 "aacd8096e39b8262a282dace723b4b15dd414ac38ff06e2bc4a1200f5e9d582f"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770278891-gd99c8f/amp-darwin-x64"
      sha256 "3013b6360aa0591266aa8a9a835578f05415566005a71d4453489db0758baa96"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770278891-gd99c8f/amp-linux-arm64"
      sha256 "16acff0ef6b82d91388ec513c5fca96722db4ecc4fa72d8086cc4c7c16dc700a"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770278891-gd99c8f/amp-linux-x64"
      sha256 "19322a6a3b302304ea5f1ed9a1ea5208dd2371d3df133c5ebcdc8f8c8bb2e6f3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
