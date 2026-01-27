class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769529779-g1fb61d"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769529779-g1fb61d/amp-darwin-arm64"
      sha256 "fa0c1dfcb0a92d61694f15d1ba2fdcbabcae2eec0adca242974e178277d587ca"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769529779-g1fb61d/amp-darwin-x64"
      sha256 "36fad52c16a82f7917a46359b02428ead9be49519be5b112823d7392f5d8b447"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769529779-g1fb61d/amp-linux-arm64"
      sha256 "b5e95ca82c08b9baa1ccfaa05d48ca69f4a346c45756d21f46614155e297de9a"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769529779-g1fb61d/amp-linux-x64"
      sha256 "9ea2e96f1b1c7da045e9ab0e8bb295ecd5df3cf0c2ccce2d07b94374b3f140a3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
