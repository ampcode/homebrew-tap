class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781014365-g7ac8f9"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781014365-g7ac8f9/amp-darwin-arm64"
      sha256 "eef605199324cda80aa68be3a0a0539f513fc9e171dc59e8ed11ef1a19b57511"
    else
      url "https://static.ampcode.com/cli/0.0.1781014365-g7ac8f9/amp-darwin-x64"
      sha256 "144148a7eb5ae8bd02905dddd2310ce96eddb089af0ed18c03b080b841faaea2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781014365-g7ac8f9/amp-linux-arm64"
      sha256 "00fb17a73e12a4f3ae3deec7379a747ed38ad6ac9700161b66d642b489dbc36c"
    else
      url "https://static.ampcode.com/cli/0.0.1781014365-g7ac8f9/amp-linux-x64"
      sha256 "8d39083b634fbd10bccf82a8736c7c031f02788184ed6aff1f2afd3e6d54c804"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
