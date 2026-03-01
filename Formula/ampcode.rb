class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772339780-g24a24e"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772339780-g24a24e/amp-darwin-arm64"
      sha256 "3921d1c5098919ec7c47203792e7163062ade1710f85bb988f1147b357c991b5"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772339780-g24a24e/amp-darwin-x64"
      sha256 "ac4ada0f462fbef2e312d1170550fa3620063916194e53c338734ba4ebcde00e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772339780-g24a24e/amp-linux-arm64"
      sha256 "f71df0ca4eec9663896f7fdc1c89c23ad8670984316b5eca4136b830e68ba402"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772339780-g24a24e/amp-linux-x64"
      sha256 "b0f5543dbdcc05bf308a1921591d250aa48db7bf2f88f6e39847105a95107b43"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
