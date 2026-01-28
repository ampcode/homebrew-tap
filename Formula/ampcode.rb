class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769561024-g290ba1"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "/0.0.1769561024-g290ba1/amp-darwin-arm64"
      sha256 "6f3cb23964fca0620578ad63fa4532cc800c876a82cce4308fb47c656a0e6da3"
    else
      url "/0.0.1769561024-g290ba1/amp-darwin-x64"
      sha256 "653df48171ea15dd66a3dde53f94488d0b6c2930c3bb85ae10787546ff7497bc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "/0.0.1769561024-g290ba1/amp-linux-arm64"
      sha256 "67740bed0629b199d94ddb5683b11f3ccbce6a34c1195c3fe609a31f768f7ef9"
    else
      url "/0.0.1769561024-g290ba1/amp-linux-x64"
      sha256 "8130254bb8f78fa0921d8e054c55f22dba26fdac6e8af516c508ded248338576"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
