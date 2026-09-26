class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790424028-ge9aad5"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790424028-ge9aad5/amp-darwin-arm64"
      sha256 "acc78c4fa6bfe3d2068be9cda5b61e8c4d4deadf32aefbfad09b32c248e468e1"
    else
      url "https://static.ampcode.com/cli/0.0.1790424028-ge9aad5/amp-darwin-x64"
      sha256 "e7ea52c0b2e4a57208ffed7e7ec32647399e47512bc53ea8694e34317f969fca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790424028-ge9aad5/amp-linux-arm64"
      sha256 "0b6a0348111f7ac76ee4de5014fbed62d7c8143e44f7ede5424d831a9324fd22"
    else
      url "https://static.ampcode.com/cli/0.0.1790424028-ge9aad5/amp-linux-x64"
      sha256 "edf521835e8c27fba1dcfafd8138e255849f5e7067d2f90859c8cef5ded4a2fd"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
