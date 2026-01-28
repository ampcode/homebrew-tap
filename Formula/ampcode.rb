class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769573834-gf25e1e"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "/0.0.1769573834-gf25e1e/amp-darwin-arm64"
      sha256 "113dae1581e930da411b0789754c61bfa435c731efaff8d428418e858f03e4b3"
    else
      url "/0.0.1769573834-gf25e1e/amp-darwin-x64"
      sha256 "c8749e9cae00ad8c01157fc83cbfec0ef022edb605fdce6cf2c8b7719eaabcd8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "/0.0.1769573834-gf25e1e/amp-linux-arm64"
      sha256 "791f99c095b70c9c5fb6a89e9dbca0ee88c5aaa05f12b277234e4c9b581129f3"
    else
      url "/0.0.1769573834-gf25e1e/amp-linux-x64"
      sha256 "c2317ab06c99f0ce58d48930fb208fdd1863a9b7505a5459aaed00044d89ca75"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
