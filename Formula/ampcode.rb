class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770321907-gbab39e"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770321907-gbab39e/amp-darwin-arm64"
      sha256 "1dddbeab03c59c8f43823cbb2bda3a60568055c269e8df6240ee3ebe21895a37"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770321907-gbab39e/amp-darwin-x64"
      sha256 "4a203156e7786960a1dc4a484be19b3c7479070a55bc1671a46613112d7f87f5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770321907-gbab39e/amp-linux-arm64"
      sha256 "995de0f29cb488f8cb7da6df1286553176dfcf1c9023b701ea4f15b0fd968c96"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770321907-gbab39e/amp-linux-x64"
      sha256 "1895c0d36282275ebee3d7cbdf0b9138882ec55cba408675e3f146ea52786a2a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
