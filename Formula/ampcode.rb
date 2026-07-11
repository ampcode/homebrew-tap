class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783772103-g850382"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783772103-g850382/amp-darwin-arm64"
      sha256 "9aec1c7c587edfb23c2972d19c63bc830d2e1d5b9fd8da2191ab23bac3604f05"
    else
      url "https://static.ampcode.com/cli/0.0.1783772103-g850382/amp-darwin-x64"
      sha256 "e7c88ab6bd82db400c9a7d16508fc4e81e40b3dafbd0d12827c76909b59c2b3f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783772103-g850382/amp-linux-arm64"
      sha256 "d453e2961329b3c7e4004ec7375f7fa24822b188acf3ddf4f0f1ee42ae474128"
    else
      url "https://static.ampcode.com/cli/0.0.1783772103-g850382/amp-linux-x64"
      sha256 "482bb112d9db0f6dcb452603ef3a11ef010c616d045a61c22dfb2175efac618b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
