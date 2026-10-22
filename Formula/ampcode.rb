class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792670445-ge8d5b3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792670445-ge8d5b3/amp-darwin-arm64"
      sha256 "fecb9f99e225cc244c2296e264ee4a93816bdd5c2a4898b0a8c524f4a225ef97"
    else
      url "https://static.ampcode.com/cli/0.0.1792670445-ge8d5b3/amp-darwin-x64"
      sha256 "f6a273e5517f5856dbf2ef3cefa54e54aff5798e11b002f8a3499287917e1c07"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792670445-ge8d5b3/amp-linux-arm64"
      sha256 "9a7524675da871d2cac50eb56cf7a85e559f845eb902dcc99ef404c06fc49d73"
    else
      url "https://static.ampcode.com/cli/0.0.1792670445-ge8d5b3/amp-linux-x64"
      sha256 "a29ede317edc031eb356db6fce8a0944f15e9e6fa45dff8411a45123ea16e6aa"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
