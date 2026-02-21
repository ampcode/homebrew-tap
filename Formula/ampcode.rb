class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771689752-gb883f7"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771689752-gb883f7/amp-darwin-arm64"
      sha256 "7307009d7207f8dec8e83905f176f32ccc1584d70f8927f06ed18f6a89c2a3e1"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771689752-gb883f7/amp-darwin-x64"
      sha256 "5ca6677b3dcb0e2f3fe00fdb16bd1836d4d830953dbc7822bd641c04863df309"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771689752-gb883f7/amp-linux-arm64"
      sha256 "8f7035d3ec0dba0f882f20eefcfbbe74ac60ae059e783cdc4fe94a3bb02b02ef"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771689752-gb883f7/amp-linux-x64"
      sha256 "8f7f00cf073325d39cbc81aa999577202bfa1f867fff84af12dfac23e5749438"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
