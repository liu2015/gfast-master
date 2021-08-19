package task

type Franchise struct {
	CreatorUserid       string `json:"creator_userid"`
	TemplateID          string `json:"template_id"`
	UseTemplateApprover int    `json:"use_template_approver"`
	ApplyData           struct {
		Contents []struct {
			Control string `json:"control"`
			ID      string `json:"id"`
			Title   []struct {
				Text string `json:"text"`
				Lang string `json:"lang"`
			} `json:"title"`
			Value struct {
				Text            string        `json:"text"`
				Tips            []interface{} `json:"tips"`
				Members         []interface{} `json:"members"`
				Departments     []interface{} `json:"departments"`
				Files           []interface{} `json:"files"`
				Children        []interface{} `json:"children"`
				StatField       []interface{} `json:"stat_field"`
				SumField        []interface{} `json:"sum_field"`
				RelatedApproval []interface{} `json:"related_approval"`
				Students        []interface{} `json:"students"`
				Classes         []interface{} `json:"classes"`
			} `json:"value"`
		} `json:"contents"`
	} `json:"apply_data"`
	SummaryList []struct {
		SummaryInfo []struct {
			Text string `json:"text"`
			Lang string `json:"lang"`
		} `json:"summary_info"`
	} `json:"summary_list"`
}

// 解析发送申请的格式
type Franchise1 struct {
	CreatorUserid       string `json:"creator_userid"`
	TemplateID          string `json:"template_id"`
	UseTemplateApprover int    `json:"use_template_approver"`

	ApplyData struct {
		Contents []struct {
			Control string `json:"control"`
			ID      string `json:"id"`
			Title   []struct {
				Text string `json:"text"`
				Lang string `json:"lang"`
			} `json:"title"`
			Value struct {
				Text        string        `json:"text"`
				Tips        []interface{} `json:"tips"`
				Members     []interface{} `json:"members"`
				Departments []interface{} `json:"departments"`
				Files       []struct {
					FileID string `json:"file_id"`
				} `json:"files"`
				Children  []interface{} `json:"children"`
				StatField []interface{} `json:"stat_field"`
				Selector  struct {
					Type    string `json:"type"`
					Options []struct {
						Key   string `json:"key"`
						Value []struct {
							Text string `json:"text"`
							Lang string `json:"lang"`
						} `json:"value"`
					} `json:"options"`
				} `json:"selector"`
				SumField        []interface{} `json:"sum_field"`
				RelatedApproval []interface{} `json:"related_approval"`
				Students        []interface{} `json:"students"`
				Classes         []interface{} `json:"classes"`
			} `json:"value,omitempty"`
		} `json:"contents"`
	} `json:"apply_data"`
	SummaryList []struct {
		SummaryInfo []struct {
			Text string `json:"text"`
			Lang string `json:"lang"`
		} `json:"summary_info"`
	} `json:"summary_list"`
}

func Test() {

}
