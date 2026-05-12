class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778617773-g0117c2"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778617773-g0117c2/amp-darwin-arm64"
      sha256 "e49c510bca674abb4c936a493a9da6efdfacec023bcbaf986388c9c97ad266fb"
    else
      url "https://static.ampcode.com/cli/0.0.1778617773-g0117c2/amp-darwin-x64"
      sha256 "3584c50dbb3766e4d90c65c4ce3e00585eca806b733a0197609cc8b4548d0962"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778617773-g0117c2/amp-linux-arm64"
      sha256 "20e51f4c5061061d8c8ce1952db216138f1101df3aa3ad1e729c2e24ecd932e3"
    else
      url "https://static.ampcode.com/cli/0.0.1778617773-g0117c2/amp-linux-x64"
      sha256 "8cee2d7b27974e56e8beba5ec7b865c2c7c02d4fa17fa3be54cfff3434591515"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
